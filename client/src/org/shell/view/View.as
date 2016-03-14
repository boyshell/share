package org.shell.view
{
	import flash.display.Sprite;

	public class View extends Sprite
	{

		public function get refresh():Function
		{
			return _refresh;
		}

		public function set refresh(value:Function):void
		{
			_refresh = value;
		}

		public function get resize():Function
		{
			return _resize;
		}

		public function set resize(value:Function):void
		{
			_resize = value;
		}

		private var _resize:Function;
		private var _refresh:Function;
		
		public function View(_resize:Function, _refresh:Function)
		{
			this._resize = _resize;
			this._refresh = _refresh;
		}
	}
}