package org.shell.game.pet
{
	import org.shell.game.pet.message.PET_MAP;
	import org.shell.view.game.map.MapObjectView;
	import org.shell.view.game.map.PetView;

	public class PetManager
	{
		private static const _instance:PetManager = new PetManager();
		public function PetManager()
		{
			if (instance)
			{
				throw new Error("单例不允许初始化");
			}
		}

		public static function get instance():PetManager
		{
			return _instance;
		}

		public function createMapPet(pet:PET_MAP):PetView
		{
			// TODO Auto Generated method stub
			return null;
		}
	}
}