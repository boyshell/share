package org.shell.view
{
	import flash.display.Stage;
	import flash.events.Event;
	
	import org.shell.view.impl.LoginView;

	/**
	 * 管理游戏舞台
	 */
	public class GameView
	{
		private static var _instance:GameView;
		private var _stage:Stage;
		private var _view:View; // 登陆/创角/进入地图/游戏场景
		
		public function get view():View
		{
			return _view;
		}

		public static function getInstance():GameView
		{
			return _instance;
		}
		
		public function GameView(stage:Stage)
		{
			if (_instance != null)
			{
				throw new Error("单例无法多次初始化");
			}
			this._stage = stage;
			changeView(new LoginView());
			_instance = this;
		}
		
		/**
		 * stage大小变更事件
		 */
		public function onResize(e:Event):void
		{
			if (this._view)
			{
				this._view.resize();
			}
		}
		
		/**
		 * 帧事件
		 */
		public function refresh(e:Event):void
		{
			if (this._view)
			{
				this._view.refresh();
			}
		}
		
		public function changeView(view:View):void
		{
			if (this._view)
			{
				this._stage.removeChild(_view);
			}
			this._view = view;
			this._stage.addChild(this._view);
		}
		
		public function error(msg:String):void
		{
			trace(msg);
		}
	}
}