package org.shell.view.impl
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	import org.shell.Config;
	import org.shell.game.GameClient;
	import org.shell.game.map.MapObjectType;
	import org.shell.game.mobject.message.MOBJECT_POSITION;
	import org.shell.game.move.message.C2S_MOVE_ROLE_MOVE;
	import org.shell.util.GridUtil;
	import org.shell.view.View;
	import org.shell.view.game.map.MapObjectView;
	import org.shell.view.game.map.RoleView;
	
	public class MapView extends View
	{
		private var mapData:BitmapData; // 地图位图数据
		private var map:Bitmap;
		
		private var _self:RoleView;
		
		private var topLeftX:int;
		private var topLeftY:int;
		
		private var objects:Dictionary = new Dictionary();
		
		public function MapView(map:int)
		{
			super(resetView, refresh);
			
			// 加载地图
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, mapLoadComplete);
			loader.load(new URLRequest(Config.ROOT_URL + "/map/" + map + "/map.jpg"));
			this.addEventListener(MouseEvent.MOUSE_DOWN, mouseDown);
		}
		
		public function get self():RoleView
		{
			return _self;
		}

		public function set self(value:RoleView):void
		{
			_self = value;
		}

		protected function mouseDown(event:MouseEvent):void
		{
			var moveMsg:C2S_MOVE_ROLE_MOVE = new C2S_MOVE_ROLE_MOVE();
			moveMsg.path[0] = new MOBJECT_POSITION();
			moveMsg.path[0].x = GridUtil.pix2gridX(topLeftX + event.stageX);
			moveMsg.path[0].y = GridUtil.pix2gridY(topLeftY + event.stageY);
			GameClient.getInstance().snd(moveMsg);
			trace("发送坐标:" + moveMsg.path[0].toString());
		}

		protected function mapLoadComplete(event:Event):void
		{
			mapData = event.target.content.bitmapData;
			map = new Bitmap();
			addChild(map);
			
			GameClient.getInstance().onMapLoadComplete();
		}		
		
		private function resetView():void
		{
			if (!self)
			{
				return;
			}
			map.bitmapData = new BitmapData(stage.stageWidth, stage.stageHeight);
			topLeftX = point(map.bitmapData.width, mapData.width, self.pixX);
			topLeftY = point(map.bitmapData.height, mapData.height, self.pixY);
			var rectangle:Rectangle = new Rectangle(topLeftX, topLeftY, map.bitmapData.width, map.bitmapData.height);
			map.bitmapData.copyPixels(mapData, rectangle, new Point());
		}
		
		private function point(sv:int, mv:int, cv:int):int
		{
			var v:int = cv - sv / 2;
			var max:int = mv - sv;
			return v < 0 ? 0 : v > max ? max : v;
		}
		
		private function refresh():void
		{
			resetView();
			for each(var dict:Dictionary in objects)
			{
				for each(var object:MapObjectView in dict)
				{
					object.refresh();
					object.x = object.pixX - topLeftX - object.width / 2;
					object.y = object.pixY - topLeftY- object.height / 2;
				}
			}
		}
		
		public function add(object:MapObjectView):void
		{
			if (!objects[object.type()])
			{
				objects[object.type()] = new Dictionary();
			}
			add0(objects[object.type()], object);
		}
		
		private function add0(dict:Dictionary, object:MapObjectView):void
		{
			var tmp:MapObjectView = dict[object.id.toString()];
			if (tmp) // 存在则先移除
			{
				removeChild(tmp);
			}
			dict[object.id.toString()] = object;
			addChild(object);
		}
		
		public function getMapObjectView(type:MapObjectType, key:String):MapObjectView
		{
			return objects[type][key];
		}
	}
}