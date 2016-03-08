package org.shell.game.login.handler {
    import org.shell.game.Handler;
    import org.shell.game.login.message.S2C_LOGIN_TIMER;

    public class S2C_LOGIN_TIMER_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_LOGIN_TIMER = S2C_LOGIN_TIMER(this.message);
            // TODO 添加消息处理
        }
    }
}