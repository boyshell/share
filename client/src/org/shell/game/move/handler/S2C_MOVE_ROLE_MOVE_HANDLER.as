package org.shell.game.move.handler {
    import org.shell.game.Handler;
    import org.shell.game.map.MapObjectType;
    import org.shell.game.move.message.S2C_MOVE_ROLE_MOVE;
    import org.shell.view.GameView;
    import org.shell.view.game.map.MapObjectView;
    import org.shell.view.impl.MapView;
    import org.shell.game.mobject.message.MOBJECT_POSITION;

    public class S2C_MOVE_ROLE_MOVE_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MOVE_ROLE_MOVE = S2C_MOVE_ROLE_MOVE(this.message);
            if (msg.hasError)
			{
				GameView.getInstance().error("移动失败:" + msg.error);
				return;
			}
			var view:MapView = MapView(GameView.getInstance().view);
			var object:MapObjectView = view.getMapObjectView(MapObjectType.ROLE, msg.id.toString());
			object.time = new Date().time;
			object.srcPixX = object.pixX;
			object.srcPixY = object.pixY;
			object.speed = msg.info.speed;
			
			for each(var p:MOBJECT_POSITION in msg.info.path)
			{
				object.path.push(p);
			}
        }
    }
}