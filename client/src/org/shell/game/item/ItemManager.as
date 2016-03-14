package org.shell.game.item
{
	import org.shell.game.item.message.ITEM_MAP;
	import org.shell.view.game.map.ItemView;

	public class ItemManager
	{
		private static const _instance:ItemManager = new ItemManager();
		public function ItemManager()
		{
			if (instance)
			{
				throw new Error("单例不允许初始化");
			}
		}

		public static function get instance():ItemManager
		{
			return _instance;
		}

		public function createMapItem(item:ITEM_MAP):ItemView
		{
			// TODO Auto Generated method stub
			return null;
		}
	}
}