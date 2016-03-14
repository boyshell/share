package org.shell.view.impl
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.utils.Dictionary;
	
	import org.shell.Config;
	import org.shell.game.GameClient;
	import org.shell.util.Button;
	import org.shell.view.View;

	public final class LoginView extends View
	{
		// 背景
		private var background:Bitmap;
		private var backgroundData:BitmapData;
		
		// 控件
		private var controls:Dictionary = new Dictionary();
		
		private var CONTROL_WIDTH:int = 100;
		private var CONTROL_HEIGHT:int = 20;
		private var CONTROL_INTERVAL:int = 5;
		
		
		public function LoginView()
		{
			super(resetView, refresh);
			// 加载背景图
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, backgroundLoadComplete);
			loader.load(new URLRequest(Config.ROOT_URL + "/background.jpg"));
		}
		
		
		
		private function backgroundLoadComplete(e:Event):void
		{
			backgroundData = e.target.content.bitmapData;
			background = new Bitmap();
			addChild(background);
			
			// 绘制UI组件
			var uiWidth:int = 100;
			var uiHeight:int = 20;
			
			addControl(UiListKey.HOST, createTextField("192.168.1.51"));
			addControl(UiListKey.PORT, createTextField("8848"));
			addControl(UiListKey.PLATFORM, createTextField("0"));
			addControl(UiListKey.SERVER, createTextField("0"));
			addControl(UiListKey.ACCOUNT, createTextField("zxx001"));
			addControl(UiListKey.ADULT, createTextField("0"));
			addControl(UiListKey.LOGIN, createButton("登陆", login));
			
			resetView();
		}
		
		private function createButton(text:String, f:Function):DisplayObject
		{
			var button:Button = new Button(text, CONTROL_WIDTH, CONTROL_HEIGHT);
			button.addEventListener(MouseEvent.CLICK, f);
			return button;
		}
		
		private function addControl(key:UiListKey, value:DisplayObject):void
		{
			if (controls[key])
			{
				throw new Error("无法覆盖已经存在的值");
			}
			addChild(value);
			controls[key] = value;
		}
		
		private function getControlValue(key:UiListKey):String
		{
			return controls[key].text;
		}
		
		protected function login(event:MouseEvent):void
		{
			var gameClient:GameClient = new GameClient(
				getControlValue(UiListKey.HOST)
				, int(getControlValue(UiListKey.PORT))
				, getControlValue(UiListKey.ACCOUNT)
				, int(getControlValue(UiListKey.PLATFORM))
				, int(getControlValue(UiListKey.SERVER))
				, Boolean(getControlValue(UiListKey.ADULT)));
		}
		
		private function createTextField(defaultContent:String):TextField
		{
			var field:TextField = new TextField();
			
			field.width = CONTROL_WIDTH;
			field.height = CONTROL_HEIGHT;
			field.text = defaultContent;
			field.backgroundColor = 0xffffff;
			field.background = true;
			field.type = TextFieldType.INPUT;
			return field;
		}
		
		private function resetView():void
		{
			// 刷新背景
			background.bitmapData = new BitmapData(Math.min(stage.stageWidth, backgroundData.width), Math.min(stage.stageHeight, backgroundData.height));
			background.x = (stage.stageWidth - background.bitmapData.width) / 2;
			background.y = (stage.stageHeight - background.bitmapData.height) / 2;

			var rectangle:Rectangle = new Rectangle((backgroundData.width - background.bitmapData.width) / 2
													, (backgroundData.height - background.bitmapData.height) / 2
													, background.bitmapData.width
													, background.bitmapData.height);
			
			background.bitmapData.copyPixels(backgroundData, rectangle, new Point());
//			trace("rectangle(" + rectangle.x + "," + rectangle.y + "," + rectangle.width + "," + rectangle.height + ")");
			
			// 刷新UI组件
			var topLeftX:int = (stage.stageWidth - CONTROL_WIDTH) / 2;
			var topLeftY:int = (stage.stageHeight - (UiListKey.all.length * CONTROL_HEIGHT + (UiListKey.all.length - 1) * CONTROL_INTERVAL)) / 2;
			for each(var key:UiListKey in UiListKey.all)
			{
				controls[key].x = topLeftX;
				controls[key].y = topLeftY + key.index * (CONTROL_HEIGHT + CONTROL_INTERVAL);
//				trace("x=" + controls[key].x + ",y=" + controls[key].y);
			}
		}
		
		private function refresh():void
		{
		}
	}
}


class UiListKey
{
	private var _index:int;
	public function UiListKey(index:int)
	{
		this.index = index;
		if (all == null)
		{
			all = new Array();
		}
		all[index] = this;
	}
	
	public static function get all():Array
	{
		return _all;
	}

	public static function set all(value:Array):void
	{
		_all = value;
	}

	public function get index():int
	{
		return _index;
	}

	public function set index(value:int):void
	{
		_index = value;
	}
	
	private static var _all:Array;
	
	public static const HOST:UiListKey = new UiListKey(0);
	public static const PORT:UiListKey = new UiListKey(1);
	public static const PLATFORM:UiListKey = new UiListKey(2);
	public static const SERVER:UiListKey = new UiListKey(3);
	public static const ACCOUNT:UiListKey = new UiListKey(4);
	public static const ADULT:UiListKey = new UiListKey(5);
	public static const LOGIN:UiListKey = new UiListKey(6);
}