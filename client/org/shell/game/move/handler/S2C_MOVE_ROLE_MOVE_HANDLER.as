package org.shell.game.move.handler {
    import org.shell.game.Handler;
    import org.shell.game.move.message.S2C_MOVE_ROLE_MOVE;

    public class S2C_MOVE_ROLE_MOVE_HANDLER extends Handler {
        public override function action():void {
            var msg:S2C_MOVE_ROLE_MOVE = S2C_MOVE_ROLE_MOVE(this.message);
            // TODO 添加消息处理
        }
    }
}