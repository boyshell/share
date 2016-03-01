package org.shell.game {
    import org.shell.game.login.message.C2S_LOGIN_LOGIN;
    import org.shell.game.login.message.S2C_LOGIN_LOGIN;
    import org.shell.game.login.message.C2S_LOGIN_CREATE_ROLE;
    import org.shell.game.login.message.S2C_LOGIN_CREATE_ROLE;
    import org.shell.game.login.message.S2C_LOGIN_SYNC_CONFIG;
    import org.shell.game.login.message.S2C_LOGIN_SYNC_VERSION;
    import org.shell.game.map.message.C2S_MAP_ENTER;
    import org.shell.game.map.message.S2C_MAP_ENTER;
    import org.shell.game.map.message.S2C_MAP_ROUND;
    import org.shell.game.map.message.S2C_MAP_ROLE;
    import org.shell.game.map.message.S2C_MAP_SYNC_LINE;

    import flash.utils.Dictionary;

    public class ParserGroup {
        private var _id2message:Dictionary = new Dictionary();
        private var _message2id:Dictionary = new Dictionary();

        public function get message2id():Dictionary {
            return _message2id;
        }

        public function set message2id(value:Dictionary):void {
            _message2id = value;
        }

        public function get id2message():Dictionary {
            return _id2message;
        }

        public function set id2message(value:Dictionary):void {
            _id2message = value;
        }

        public function add(id:int, messageClass:Class):void {
            this.id2message[id] = messageClass;
            this.message2id[messageClass] = id;
        }

        public function ParserGroup() {
            this.add(256, C2S_LOGIN_LOGIN);
            this.add(257, S2C_LOGIN_LOGIN);
            this.add(260, C2S_LOGIN_CREATE_ROLE);
            this.add(261, S2C_LOGIN_CREATE_ROLE);
            this.add(265, S2C_LOGIN_SYNC_CONFIG);
            this.add(269, S2C_LOGIN_SYNC_VERSION);
            this.add(768, C2S_MAP_ENTER);
            this.add(769, S2C_MAP_ENTER);
            this.add(773, S2C_MAP_ROUND);
            this.add(777, S2C_MAP_ROLE);
            this.add(781, S2C_MAP_SYNC_LINE);
        }
    }
}