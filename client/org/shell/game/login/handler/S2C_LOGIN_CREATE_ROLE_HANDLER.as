package org.shell.game.login.handler {
    import org.shell.game.Handler;
    import org.shell.game.login.message.S2C_LOGIN_CREATE_ROLE;

    public class S2C_LOGIN_CREATE_ROLE_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_LOGIN_CREATE_ROLE = S2C_LOGIN_CREATE_ROLE(this.message);
            // TODO 添加消息处理
        }
    }
}