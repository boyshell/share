package org.shell.resources
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.utils.Dictionary;
	
	import org.shell.Config;
	import org.shell.game.map.MapObjectType;
	import org.shell.view.game.map.MapObjectDirection;
	import org.shell.view.game.map.MapObjectState;

	public class ResourceLoader
	{
		private var type2state2dir2frames:Dictionary;
		private var type:MapObjectType, state:MapObjectState, direction:MapObjectDirection, frame:int;
		
		public function ResourceLoader(type2state2dir2frames:Dictionary, type:MapObjectType, state:MapObjectState, direction:MapObjectDirection, frame:int)
		{
			this.type2state2dir2frames = type2state2dir2frames;
			this.type = type;
			this.state = state;
			this.direction = direction;
			this.frame = frame;
			
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
			loader.load(new URLRequest(getUrl(type, state, direction, frame)));
		}
		
		protected function loadComplete(event:Event):void
		{
			var bitmap:Bitmap = new Bitmap(event.target.content.bitmapData);
			type2state2dir2frames[type][state][direction][frame] = bitmap;
		}
		
		private function getUrl(type:MapObjectType, state:MapObjectState, direction:MapObjectDirection, frame:int):String
		{
			// TODO Auto Generated method stub
			return Config.ROOT_URL + "/role/stand/bottom/" + frame + ".png";
		}
	}
}