package org.shell.game.map.handler {
    import org.shell.game.GameClient;
    import org.shell.game.Handler;
    import org.shell.game.map.message.S2C_MAP_ROUND;
    import org.shell.game.role.RoleManager;
    import org.shell.game.role.message.ROLE_MAP;
    import org.shell.view.GameView;
    import org.shell.view.game.map.RoleView;
    import org.shell.view.impl.MapView;

    public class S2C_MAP_ROUND_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MAP_ROUND = S2C_MAP_ROUND(this.message);
			var view:MapView = MapView(GameView.getInstance().view);
			for each(var role:ROLE_MAP in msg.role)
			{
				var roleView:RoleView = RoleManager.instance.createMapRole(role);
				view.add(roleView);
				if (role.id.toString() == GameClient.getInstance().id.toString())
				{
					view.self = roleView;
				}
			}
//			for each(var monster:MONSTER_MAP in msg.monster)
//			{
//				view.add(MonsterManager.instance.create(monster));
//			}
//			for each(var pet:PET_MAP in msg.pet)
//			{
//				view.add(PetManager.instance.createMapPet(pet));
//			}
//			for each(var item:ITEM_MAP in msg.item)
//			{
//				view.add(ItemManager.instance.createMapItem(item));
//			}
        }
    }
}