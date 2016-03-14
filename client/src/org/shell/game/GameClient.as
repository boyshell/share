package org.shell.game
{
	import com.netease.protobuf.Message;
	import com.netease.protobuf.UInt64;
	
	import flash.events.Event;
	
	import org.shell.game.login.message.C2S_LOGIN_LOGIN;
	import org.shell.game.map.message.C2S_MAP_ENTER;
	import org.shell.net.TcpClient;

	/**
	 * 玩家所有信息均保存到此结构
	 */
	public final class GameClient
	{
		private static var _instance:GameClient;
		private var tcpClient:TcpClient;
		private var _account:String, _platform:int, _server:int, adult:Boolean, _id:UInt64;
		
		public function get id():UInt64
		{
			return _id;
		}

		public function set id(value:UInt64):void
		{
			_id = value;
		}

		public function get server():int
		{
			return _server;
		}

		public function set server(value:int):void
		{
			_server = value;
		}

		public function get platform():int
		{
			return _platform;
		}

		public function set platform(value:int):void
		{
			_platform = value;
		}

		public function get account():String
		{
			return _account;
		}

		public function set account(value:String):void
		{
			_account = value;
		}

		public static function getInstance():GameClient
		{
			return _instance;
		}
		
		public function GameClient(host:String, port:int, account:String, platform:int, server:int, adult:Boolean)
		{
			if (_instance != null)
			{
				throw new Error("单例无法多次初始化");
			}
			this.account = account;
			this.platform = platform;
			this.server = server;
			this.adult = adult;
			tcpClient = new TcpClient(host, port, rcv, err, connect, close);
			
			_instance = this;
		}
		
		private function close(event:Event):void
		{
			trace("session close");
		}
		
		private function rcv(handler:Handler):void
		{
			handler.action();
		}
		
		private function connect(event:Event):void
		{
			var loginMsg:C2S_LOGIN_LOGIN = new C2S_LOGIN_LOGIN();
			loginMsg.usr = account;
			loginMsg.platform = platform;
			loginMsg.server = server;
			loginMsg.adult = adult;
			snd(loginMsg);
		}
		
		private function err(event:Event):void
		{
			trace("session error");
		}
		
		public function snd(msg:com.netease.protobuf.Message):void
		{
			tcpClient.snd(msg);
		}
		
		public function onMapLoadComplete():void
		{
			snd(new C2S_MAP_ENTER());
		}
	}
}