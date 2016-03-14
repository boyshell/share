package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.system.fscommand;
	
	import org.shell.resources.ResourcesManager;
	import org.shell.view.GameView;

	[SWF(backgroundColor="#000000", frameRate="60", width="1024", height="768")]
	public class Main extends Sprite
	{
		public function Main()
		{
			if (!stage)
			{
				trace("state not exists");
				fscommand("quit");
			}
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			new GameView(this.stage);
			
			stage.addEventListener(Event.RESIZE, GameView.getInstance().onResize);
			stage.addEventListener(Event.ENTER_FRAME, GameView.getInstance().refresh);
			
			new ResourcesManager();
		}
	}
}