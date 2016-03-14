package org.shell.game.map.handler {
    import org.shell.game.Handler;
    import org.shell.game.map.message.S2C_MAP_ENTER;
    import org.shell.view.GameView;

    public class S2C_MAP_ENTER_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MAP_ENTER = S2C_MAP_ENTER(this.message);
            if (msg.hasError)
			{
				GameView.getInstance().error("进入场景失败:" + msg.error);
			}
        }
    }
}