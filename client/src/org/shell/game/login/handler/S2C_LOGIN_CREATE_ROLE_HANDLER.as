package org.shell.game.login.handler {
    import org.shell.game.GameClient;
    import org.shell.game.Handler;
    import org.shell.game.login.message.S2C_LOGIN_CREATE_ROLE;
    import org.shell.view.GameView;
    import org.shell.view.impl.MapView;

    public class S2C_LOGIN_CREATE_ROLE_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_LOGIN_CREATE_ROLE = S2C_LOGIN_CREATE_ROLE(this.message);
			if (msg.hasError) // 出错了
			{
				GameView.getInstance().error("创角失败:" + msg.error);
				return;
			}
			trace("进入地图");
			GameClient.getInstance().id = msg.self.id;
			// 开始加载地图资源
			GameView.getInstance().changeView(new MapView(msg.self.map));
        }
    }
}