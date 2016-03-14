package org.shell.game.role
{
	import org.shell.game.role.message.ROLE_MAP;
	import org.shell.view.game.map.RoleView;

	public class RoleManager
	{
		private static const _instance:RoleManager = new RoleManager();
		public function RoleManager()
		{
			if (_instance)
			{
				throw new Error("单例不允许初始化");
			}
		}

		public static function get instance():RoleManager
		{
			return _instance;
		}

		public function createMapRole(role:ROLE_MAP):RoleView
		{
			return new RoleView(role.id, role.base.position.x, role.base.position.y);
		}
	}
}