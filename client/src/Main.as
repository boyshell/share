package
{
	import flash.display.Sprite;
	import flash.utils.Timer;
	import org.shell.TcpClient;
	import flash.events.TimerEvent;
	import org.shell.game.login.message.C2S_LOGIN_LOGIN;
	
	public class Main extends Sprite
	{
		private var _timer:Timer;
		private var snd:Boolean = false;
		private var client:TcpClient;
		
		public function Main()
		{
			// 连接到服务器
			client = new TcpClient("192.168.1.51", 8848);
			
			_timer=new Timer(100,0);
			_timer.addEventListener(TimerEvent.TIMER,ontimer);
			　　　　_timer.start();
		}
		
		protected function ontimer(event:TimerEvent):void
		{
			if (!snd) {
				var msg:C2S_LOGIN_LOGIN = new C2S_LOGIN_LOGIN();
				msg.usr = "shell";
				msg.server = 1;
				msg.platform = 3;
				snd = client.snd(msg);	
			}
			
		}
	}
}