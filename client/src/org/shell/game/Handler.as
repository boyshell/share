package org.shell.game
{
	import com.netease.protobuf.Message;

	public class Handler
	{
		private var _message:Message;
		
		public function get message():Message {
			return _message;
		}

		public function set message(value:Message):void {
			_message = value;
		}

		public function action():void {
			
		}
	}
}