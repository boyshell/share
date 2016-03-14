package org.shell.view.game.map
{
	import com.netease.protobuf.UInt64;
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	
	import org.shell.game.map.MapObjectType;
	import org.shell.game.mobject.message.MOBJECT_POSITION;
	import org.shell.resources.ResourcesManager;
	import org.shell.util.GridUtil;

	public class MapObjectView extends Sprite
	{
		private var _id:UInt64;
		private var _gridX:int; // 格子坐标
		private var _gridY:int; // 格子坐标
		
		private var state:MapObjectState; // 当前状态
		private var direction:MapObjectDirection; // 朝向
		private var bitmap:Bitmap; // 当前动画
		
		private var _speed:int;
		private var _path:Vector.<MOBJECT_POSITION> = new Vector.<MOBJECT_POSITION>();
		private var _time:Number;
		private var _pixX:int;
		private var _pixY:int;
		private var _srcPixX:int;
		private var _srcPixY:int;
		
		public function MapObjectView(_id:UInt64, _gridX:int, _gridY:int)
		{
			this._id = _id;
			this._gridX = _gridX;
			this._gridY = _gridY;
			this.pixX = GridUtil.grid2pixX(this._gridX);
			this.pixY = GridUtil.grid2pixY(this._gridY);
			this.state = MapObjectState.STAND;
			this.direction = MapObjectDirection.BOTTOM;
		}
		
		public function get srcPixY():int
		{
			return _srcPixY;
		}

		public function set srcPixY(value:int):void
		{
			_srcPixY = value;
		}

		public function get srcPixX():int
		{
			return _srcPixX;
		}

		public function set srcPixX(value:int):void
		{
			_srcPixX = value;
		}

		public function get pixY():int
		{
			return _pixY;
		}

		public function set pixY(value:int):void
		{
			_pixY = value;
		}

		public function get pixX():int
		{
			return _pixX;
		}

		public function set pixX(value:int):void
		{
			_pixX = value;
		}

		public function get time():Number
		{
			return _time;
		}

		public function set time(value:Number):void
		{
			_time = value;
		}

		public function get path():Vector.<MOBJECT_POSITION>
		{
			return _path;
		}

		public function set path(value:Vector.<MOBJECT_POSITION>):void
		{
			_path = value;
		}

		public function get speed():int
		{
			return _speed;
		}

		public function set speed(value:int):void
		{
			_speed = value;
		}

		public function get gridY():int
		{
			return _gridY;
		}

		private function set gridY(value:int):void
		{
			_gridY = value;
		}

		public function get gridX():int
		{
			return _gridX;
		}

		private function set gridX(value:int):void
		{
			_gridX = value;
		}

		public function get id():UInt64
		{
			return _id;
		}

		public function type():MapObjectType
		{
			throw new Error("必须继承");
		}
		
		private var frame:int = 0;
		public function refresh():void
		{
			if (this.bitmap)
			{
				this.removeChild(this.bitmap);
			}
			this.bitmap = ResourcesManager.instance.getBitmap(type(), state, direction, frame / 10 % 6);
			if (this.bitmap)
			{
				this.addChild(this.bitmap);
			}
			frame = (frame + 1) % 60;
			update();
		}
		
		private function update():void {
			if (path.length <= 0) {
				return;
			}
			var now:Number = new Date().time;
			var movePix:Number = (now - time) * speed / 1000;
			
			while (path.length > 0) {
				var dst:MOBJECT_POSITION = path[0];
				var dstPixX:int = GridUtil.grid2pixX(dst.x);
				var dstPixY:int = GridUtil.grid2pixY(dst.y);
				var distancePix:Number = distance(srcPixX, srcPixY, dstPixX, dstPixY);
				if (movePix > distancePix || distancePix == 0) {
					movePix = updateInflection(movePix, distancePix, now);
				} else {
					updatePix(dstPixX, dstPixY, movePix, distancePix);
					break;
				}
			}
			this._gridX = GridUtil.pix2gridX(pixX);
			this._gridY = GridUtil.pix2gridY(pixY);
			//        logger.info("当前坐标:{},{} -> {},{}", robot.getX() / Grid.WIDTH, robot.getY() / Grid.HEIGHT, robot.getX(), robot.getY());
		}
		
		private function distance(srcX:Number, srcY:Number, dstX:Number, dstY:Number):Number
		{
			return Math.sqrt(Math.pow((srcX - dstX), 2) + Math.pow((srcY - dstY), 2));
		}
		
		private function updatePix(dstPixX:Number, dstPixY:Number, movePix:Number, distancePix:Number):void
		{
			pixX = count(srcPixX, dstPixX, movePix, distancePix);
			pixY = count(srcPixY, dstPixY, movePix, distancePix);
		}
		
		private function count(src:Number, dst:Number, movePix:Number, distancePix:Number):Number
		{
			return src + (dst - src) * movePix / distancePix;
		}
		
		private function updateInflection(movePix:int, distancePix:Number, now:Number):Number {
			var remove:MOBJECT_POSITION = path.shift();
			if (path.length <= 0) {
				pixX = GridUtil.grid2pixX(remove.x);
				pixY = GridUtil.grid2pixY(remove.y);
			} else {
				srcPixX = GridUtil.grid2pixX(remove.x);
				srcPixY = GridUtil.grid2pixY(remove.y);
				
				time = now - (movePix - distancePix) * 1000 / speed;
				return movePix - distancePix;
			}
			return 0;
		}
	}
}
