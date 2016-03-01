package org.shell.game.map.handler {
    import org.shell.game.Handler;
    import org.shell.game.map.message.S2C_MAP_SYNC_LINE;

    public class S2C_MAP_SYNC_LINE_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MAP_SYNC_LINE = S2C_MAP_SYNC_LINE(this.message);
            // TODO 添加消息处理
        }
    }
}