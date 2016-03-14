package org.shell.view.game.map
{
	import com.netease.protobuf.Int64;
	
	import org.shell.game.map.MapObjectType;

	public class ItemView extends MapObjectView
	{
		public function ItemView(_id:Int64, _gridX:int, _gridY:int)
		{
			super(_id, _gridX, _gridY);
		}
		
		override public function type():MapObjectType
		{
			return MapObjectType.ITEM;
		}
		
	}
}