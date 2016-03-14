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

	public class ResourcesManager
	{
		private static var _instance:ResourcesManager;
		public function ResourcesManager()
		{
			if (_instance)
			{
				throw new Error("单例无法初始化");
			}
			
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
			loader.load(new URLRequest(Config.ROOT_URL + "/role/default.png"));
			_instance = this;
		}
		
		protected function loadComplete(event:Event):void
		{
			defaultFrame = new Bitmap(event.target.content.bitmapData);
		}
		
		public static function get instance():ResourcesManager
		{
			return _instance;
		}
		
		private var type2state2dir2frames:Dictionary = new Dictionary();
		private var defaultFrame:Bitmap;

		public function getBitmap(type:MapObjectType, state:MapObjectState, direction:MapObjectDirection, frame:int):Bitmap
		{
			var state2dir2frames:Dictionary = type2state2dir2frames[type];
			if (!state2dir2frames)
			{
				state2dir2frames = new Dictionary();
				type2state2dir2frames[type] = state2dir2frames;
			}
			var dir2frames:Dictionary = state2dir2frames[state];
			if (!dir2frames)
			{
				dir2frames = new Dictionary();
				state2dir2frames[state] = dir2frames;
			}
			var frames:Array = dir2frames[direction];
			if (!frames)
			{
				frames = new Array();
				dir2frames[direction] = frames;
			}
			var bitmap:Bitmap = frames[frame];
			if (bitmap)
			{
				return bitmap;
			}
			frames[frame] = defaultFrame;
			new ResourceLoader(type2state2dir2frames, type, state, direction, frame);
			return defaultFrame;
		}
	}
}