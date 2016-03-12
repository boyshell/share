package org.shell.game.map.handler {
    import org.shell.game.Handler;
    import org.shell.game.map.message.S2C_MAP_ENTER;

    public class S2C_MAP_ENTER_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MAP_ENTER = S2C_MAP_ENTER(this.message);
            // TODO 添加消息处理
        }
    }
}