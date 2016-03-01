package org.shell.game.map.handler {
    import org.shell.game.Handler;
    import org.shell.game.map.message.S2C_MAP_ROLE;

    public class S2C_MAP_ROLE_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MAP_ROLE = S2C_MAP_ROLE(this.message);
            // TODO 添加消息处理
        }
    }
}