package org.shell.game.monster
{
	import org.shell.game.monster.message.MONSTER_MAP;
	import org.shell.view.game.map.MonsterView;

	public class MonsterManager
	{
		private static const _instance:MonsterManager = new MonsterManager();
		public function MonsterManager()
		{
			if (instance)
			{
				throw new Error("单例不允许初始化");
			}
		}

		public static function get instance():MonsterManager
		{
			return _instance;
		}

		public function create(monster:MONSTER_MAP):MonsterView
		{
			// TODO Auto Generated method stub
			return null;
		}
	}
}