package org.shell.game {
    import org.shell.game.login.handler.S2C_LOGIN_LOGIN_HANDLER;
    import org.shell.game.login.handler.S2C_LOGIN_CREATE_ROLE_HANDLER;
    import org.shell.game.login.handler.S2C_LOGIN_SYNC_CONFIG_HANDLER;
    import org.shell.game.login.handler.S2C_LOGIN_SYNC_VERSION_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_ENTER_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_SYNC_LINE_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_ROUND_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_ROUND_CHANGE_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_ROLE_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_MONSTER_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_PET_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_ITEM_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_REMOVE_ROLE_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_REMOVE_MONSTER_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_REMOVE_PET_HANDLER;
    import org.shell.game.map.handler.S2C_MAP_REMOVE_ITEM_HANDLER;
    import org.shell.game.move.handler.S2C_MOVE_ROLE_MOVE_HANDLER;


    import flash.utils.Dictionary;

    public class ClientHandlerGroupFactory {
        private var _handlers:Dictionary = new Dictionary();
        public function get handlers():Dictionary {
            return _handlers;
        }

        public function set handlers(value:Dictionary):void {
            _handlers = value;
        }

        public function ClientHandlerGroupFactory() {
            this.handlers[257] = S2C_LOGIN_LOGIN_HANDLER;
            this.handlers[261] = S2C_LOGIN_CREATE_ROLE_HANDLER;
            this.handlers[265] = S2C_LOGIN_SYNC_CONFIG_HANDLER;
            this.handlers[269] = S2C_LOGIN_SYNC_VERSION_HANDLER;
            this.handlers[513] = S2C_MAP_ENTER_HANDLER;
            this.handlers[517] = S2C_MAP_SYNC_LINE_HANDLER;
            this.handlers[521] = S2C_MAP_ROUND_HANDLER;
            this.handlers[525] = S2C_MAP_ROUND_CHANGE_HANDLER;
            this.handlers[529] = S2C_MAP_ROLE_HANDLER;
            this.handlers[533] = S2C_MAP_MONSTER_HANDLER;
            this.handlers[537] = S2C_MAP_PET_HANDLER;
            this.handlers[541] = S2C_MAP_ITEM_HANDLER;
            this.handlers[545] = S2C_MAP_REMOVE_ROLE_HANDLER;
            this.handlers[549] = S2C_MAP_REMOVE_MONSTER_HANDLER;
            this.handlers[553] = S2C_MAP_REMOVE_PET_HANDLER;
            this.handlers[557] = S2C_MAP_REMOVE_ITEM_HANDLER;
            this.handlers[769] = S2C_MOVE_ROLE_MOVE_HANDLER;
        }
    }
}