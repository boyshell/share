package org.shell.view.game.map
{
	import com.netease.protobuf.UInt64;
	
	import org.shell.game.map.MapObjectType;

	public class RoleView extends MapObjectView
	{
		public function RoleView(_id:UInt64, _gridX:int, _gridY:int)
		{
			super(_id, _gridX, _gridY);
		}
		
		override public function type():MapObjectType
		{
			return MapObjectType.ROLE;
		}
	}
}