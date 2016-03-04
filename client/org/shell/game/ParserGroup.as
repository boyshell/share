package org.shell.game {
    import org.shell.game.login.message.C2S_LOGIN_LOGIN;
    import org.shell.game.login.message.S2C_LOGIN_LOGIN;
    import org.shell.game.login.message.C2S_LOGIN_CREATE_ROLE;
    import org.shell.game.login.message.S2C_LOGIN_CREATE_ROLE;
    import org.shell.game.login.message.S2C_LOGIN_SYNC_CONFIG;
    import org.shell.game.login.message.S2C_LOGIN_SYNC_VERSION;
    import org.shell.game.map.message.C2S_MAP_ENTER;
    import org.shell.game.map.message.S2C_MAP_ENTER;
    import org.shell.game.map.message.S2C_MAP_SYNC_LINE;
    import org.shell.game.map.message.S2C_MAP_ROUND;
    import org.shell.game.map.message.S2C_MAP_ROUND_CHANGE;
    import org.shell.game.map.message.S2C_MAP_ROLE;
    import org.shell.game.map.message.S2C_MAP_MONSTER;
    import org.shell.game.map.message.S2C_MAP_PET;
    import org.shell.game.map.message.S2C_MAP_ITEM;
    import org.shell.game.map.message.S2C_MAP_REMOVE_ROLE;
    import org.shell.game.map.message.S2C_MAP_REMOVE_MONSTER;
    import org.shell.game.map.message.S2C_MAP_REMOVE_PET;
    import org.shell.game.map.message.S2C_MAP_REMOVE_ITEM;
    import org.shell.game.move.message.C2S_MOVE_ROLE_MOVE;
    import org.shell.game.move.message.S2C_MOVE_ROLE_MOVE;

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
            this.add(512, C2S_MAP_ENTER);
            this.add(513, S2C_MAP_ENTER);
            this.add(517, S2C_MAP_SYNC_LINE);
            this.add(521, S2C_MAP_ROUND);
            this.add(525, S2C_MAP_ROUND_CHANGE);
            this.add(529, S2C_MAP_ROLE);
            this.add(533, S2C_MAP_MONSTER);
            this.add(537, S2C_MAP_PET);
            this.add(541, S2C_MAP_ITEM);
            this.add(545, S2C_MAP_REMOVE_ROLE);
            this.add(549, S2C_MAP_REMOVE_MONSTER);
            this.add(553, S2C_MAP_REMOVE_PET);
            this.add(557, S2C_MAP_REMOVE_ITEM);
            this.add(768, C2S_MOVE_ROLE_MOVE);
            this.add(769, S2C_MOVE_ROLE_MOVE);
        }
    }
}