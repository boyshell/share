package org.shell.view.game.map
{
	import org.shell.game.map.MapObjectType;
	import com.netease.protobuf.Int64;

	public class PetView extends MapObjectView
	{
		public function PetView(_id:Int64, _gridX:int, _gridY:int)
		{
			super(_id, _gridX, _gridY);
		}
		
		override public function type():MapObjectType
		{
			return MapObjectType.PET;
		}
	}
}