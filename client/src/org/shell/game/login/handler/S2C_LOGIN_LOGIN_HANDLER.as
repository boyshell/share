package org.shell.game.login.handler {
    import org.shell.game.GameClient;
    import org.shell.game.Handler;
    import org.shell.game.login.message.C2S_LOGIN_CREATE_ROLE;
    import org.shell.game.login.message.S2C_LOGIN_LOGIN;
    import org.shell.view.GameView;
    import org.shell.view.impl.MapView;

    public class S2C_LOGIN_LOGIN_HANDLER extends Handler {
		
        public override function action():void {
            var msg:S2C_LOGIN_LOGIN = S2C_LOGIN_LOGIN(this.message);
			if (msg.hasError) // 出错了
			{
				GameView.getInstance().error("登陆失败:" + msg.error);
				return;
			}
			
			if (msg.hasSelf && msg.self.hasName) // 已经有角色了
			{
				trace("进入地图");
				GameClient.getInstance().id = msg.self.id;
				// 开始加载地图资源
				GameView.getInstance().changeView(new MapView(msg.self.map));
			}
			else
			{
				// 进入创角界面
//				GameView.getInstance().changeView(new CreateRoleView());
				// TODO 测试阶段，直接创建角色
				trace("创角");
				var createMsg:C2S_LOGIN_CREATE_ROLE = new C2S_LOGIN_CREATE_ROLE();
				createMsg.name = GameClient.getInstance().platform + "_" + GameClient.getInstance().server + "_" + GameClient.getInstance().account;
				GameClient.getInstance().snd(createMsg);
			}
        }
    }
}