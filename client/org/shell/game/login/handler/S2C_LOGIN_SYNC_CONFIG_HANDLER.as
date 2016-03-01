package org.shell.game.login.handler {
    import org.shell.game.Handler;
    import org.shell.game.login.message.S2C_LOGIN_SYNC_CONFIG;

    public class S2C_LOGIN_SYNC_CONFIG_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_LOGIN_SYNC_CONFIG = S2C_LOGIN_SYNC_CONFIG(this.message);
            // TODO 添加消息处理
        }
    }
}