package org.shell.game.map.handler {
    import org.shell.game.Handler;
    import org.shell.game.map.message.S2C_MAP_ROUND_CHANGE;

    public class S2C_MAP_ROUND_CHANGE_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MAP_ROUND_CHANGE = S2C_MAP_ROUND_CHANGE(this.message);
            // TODO 添加消息处理
        }
    }
}