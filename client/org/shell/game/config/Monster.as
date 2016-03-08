package org.shell.game.config {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Monster extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xfffffffd;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x2;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.Monster.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const ICON:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.Monster.icon", "icon", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var icon$field:String;

		public function clearIcon():void {
			icon$field = null;
		}

		public function get hasIcon():Boolean {
			return icon$field != null;
		}

		public function set icon(value:String):void {
			icon$field = value;
		}

		public function get icon():String {
			return icon$field;
		}

		/**
		 *  @private
		 */
		public static const SKIN:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.Monster.skin", "skin", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var skin$field:String;

		public function clearSkin():void {
			skin$field = null;
		}

		public function get hasSkin():Boolean {
			return skin$field != null;
		}

		public function set skin(value:String):void {
			skin$field = value;
		}

		public function get skin():String {
			return skin$field;
		}

		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.hp", "hp", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp$field:int;

		public function clearHp():void {
			hasField$0 &= 0xfffffff7;
			hp$field = new int();
		}

		public function get hasHp():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set hp(value:int):void {
			hasField$0 |= 0x8;
			hp$field = value;
		}

		public function get hp():int {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const ATK:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.atk", "atk", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var atk$field:int;

		public function clearAtk():void {
			hasField$0 &= 0xffffffef;
			atk$field = new int();
		}

		public function get hasAtk():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set atk(value:int):void {
			hasField$0 |= 0x10;
			atk$field = value;
		}

		public function get atk():int {
			return atk$field;
		}

		/**
		 *  @private
		 */
		public static const DEF:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.def", "def", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var def$field:int;

		public function clearDef():void {
			hasField$0 &= 0xffffffdf;
			def$field = new int();
		}

		public function get hasDef():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set def(value:int):void {
			hasField$0 |= 0x20;
			def$field = value;
		}

		public function get def():int {
			return def$field;
		}

		/**
		 *  @private
		 */
		public static const SPEED:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.speed", "speed", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed$field:int;

		public function clearSpeed():void {
			hasField$0 &= 0xffffffbf;
			speed$field = new int();
		}

		public function get hasSpeed():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set speed(value:int):void {
			hasField$0 |= 0x40;
			speed$field = value;
		}

		public function get speed():int {
			return speed$field;
		}

		/**
		 *  @private
		 */
		public static const VIEW:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.view", "view", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var view$field:int;

		public function clearView():void {
			hasField$0 &= 0xffffff7f;
			view$field = new int();
		}

		public function get hasView():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set view(value:int):void {
			hasField$0 |= 0x80;
			view$field = value;
		}

		public function get view():int {
			return view$field;
		}

		/**
		 *  @private
		 */
		public static const PATROL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.patrol", "patrol", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var patrol$field:int;

		public function clearPatrol():void {
			hasField$0 &= 0xfffffeff;
			patrol$field = new int();
		}

		public function get hasPatrol():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set patrol(value:int):void {
			hasField$0 |= 0x100;
			patrol$field = value;
		}

		public function get patrol():int {
			return patrol$field;
		}

		/**
		 *  @private
		 */
		public static const FOLLOW:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.follow", "follow", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var follow$field:int;

		public function clearFollow():void {
			hasField$0 &= 0xfffffdff;
			follow$field = new int();
		}

		public function get hasFollow():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set follow(value:int):void {
			hasField$0 |= 0x200;
			follow$field = value;
		}

		public function get follow():int {
			return follow$field;
		}

		/**
		 *  @private
		 */
		public static const REBORN:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.reborn", "reborn", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reborn$field:int;

		public function clearReborn():void {
			hasField$0 &= 0xfffffbff;
			reborn$field = new int();
		}

		public function get hasReborn():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set reborn(value:int):void {
			hasField$0 |= 0x400;
			reborn$field = value;
		}

		public function get reborn():int {
			return reborn$field;
		}

		/**
		 *  @private
		 */
		public static const HPCOUNT:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.hpCount", "hpCount", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hpCount$field:int;

		public function clearHpCount():void {
			hasField$0 &= 0xfffff7ff;
			hpCount$field = new int();
		}

		public function get hasHpCount():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set hpCount(value:int):void {
			hasField$0 |= 0x800;
			hpCount$field = value;
		}

		public function get hpCount():int {
			return hpCount$field;
		}

		/**
		 *  @private
		 */
		public static const IDENTITY:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.identity", "identity", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var identity$field:int;

		public function clearIdentity():void {
			hasField$0 &= 0xffffefff;
			identity$field = new int();
		}

		public function get hasIdentity():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set identity(value:int):void {
			hasField$0 |= 0x1000;
			identity$field = value;
		}

		public function get identity():int {
			return identity$field;
		}

		/**
		 *  @private
		 */
		public static const MAP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.map", "map", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var map$field:int;

		public function clearMap():void {
			hasField$0 &= 0xffffdfff;
			map$field = new int();
		}

		public function get hasMap():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set map(value:int):void {
			hasField$0 |= 0x2000;
			map$field = value;
		}

		public function get map():int {
			return map$field;
		}

		/**
		 *  @private
		 */
		public static const X:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.x", "x", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var x$field:int;

		public function clearX():void {
			hasField$0 &= 0xffffbfff;
			x$field = new int();
		}

		public function get hasX():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set x(value:int):void {
			hasField$0 |= 0x4000;
			x$field = value;
		}

		public function get x():int {
			return x$field;
		}

		/**
		 *  @private
		 */
		public static const Y:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.y", "y", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var y$field:int;

		public function clearY():void {
			hasField$0 &= 0xffff7fff;
			y$field = new int();
		}

		public function get hasY():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set y(value:int):void {
			hasField$0 |= 0x8000;
			y$field = value;
		}

		public function get y():int {
			return y$field;
		}

		/**
		 *  @private
		 */
		public static const COUNT:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.count", "count", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var count$field:int;

		public function clearCount():void {
			hasField$0 &= 0xfffeffff;
			count$field = new int();
		}

		public function get hasCount():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set count(value:int):void {
			hasField$0 |= 0x10000;
			count$field = value;
		}

		public function get count():int {
			return count$field;
		}

		/**
		 *  @private
		 */
		public static const RADIUS:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.Monster.radius", "radius", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		private var radius$field:int;

		public function clearRadius():void {
			hasField$0 &= 0xfffdffff;
			radius$field = new int();
		}

		public function get hasRadius():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set radius(value:int):void {
			hasField$0 |= 0x20000;
			radius$field = value;
		}

		public function get radius():int {
			return radius$field;
		}

		/**
		 *  @private
		 */
		public static const TIMERSKILL:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.Monster.timerSkill", "timerSkill", (22 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var timerSkill$field:String;

		public function clearTimerSkill():void {
			timerSkill$field = null;
		}

		public function get hasTimerSkill():Boolean {
			return timerSkill$field != null;
		}

		public function set timerSkill(value:String):void {
			timerSkill$field = value;
		}

		public function get timerSkill():String {
			return timerSkill$field;
		}

		/**
		 *  @private
		 */
		public static const HPSKILL:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.Monster.hpSkill", "hpSkill", (23 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var hpSkill$field:String;

		public function clearHpSkill():void {
			hpSkill$field = null;
		}

		public function get hasHpSkill():Boolean {
			return hpSkill$field != null;
		}

		public function set hpSkill(value:String):void {
			hpSkill$field = value;
		}

		public function get hpSkill():String {
			return hpSkill$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, id$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, type$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, name$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, level$field);
			}
			if (hasIcon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, icon$field);
			}
			if (hasSkin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, skin$field);
			}
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, hp$field);
			}
			if (hasAtk) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, atk$field);
			}
			if (hasDef) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, def$field);
			}
			if (hasSpeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, speed$field);
			}
			if (hasView) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, view$field);
			}
			if (hasPatrol) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, patrol$field);
			}
			if (hasFollow) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, follow$field);
			}
			if (hasReborn) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reborn$field);
			}
			if (hasHpCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, hpCount$field);
			}
			if (hasIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, identity$field);
			}
			if (hasMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, map$field);
			}
			if (hasX) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, x$field);
			}
			if (hasY) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, y$field);
			}
			if (hasCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, count$field);
			}
			if (hasRadius) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, radius$field);
			}
			if (hasTimerSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 22);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, timerSkill$field);
			}
			if (hasHpSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 23);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, hpSkill$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var type$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var icon$count:uint = 0;
			var skin$count:uint = 0;
			var hp$count:uint = 0;
			var atk$count:uint = 0;
			var def$count:uint = 0;
			var speed$count:uint = 0;
			var view$count:uint = 0;
			var patrol$count:uint = 0;
			var follow$count:uint = 0;
			var reborn$count:uint = 0;
			var hpCount$count:uint = 0;
			var identity$count:uint = 0;
			var map$count:uint = 0;
			var x$count:uint = 0;
			var y$count:uint = 0;
			var count$count:uint = 0;
			var radius$count:uint = 0;
			var timerSkill$count:uint = 0;
			var hpSkill$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 5:
					if (icon$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.icon cannot be set twice.');
					}
					++icon$count;
					this.icon = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 6:
					if (skin$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.skin cannot be set twice.');
					}
					++skin$count;
					this.skin = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 7:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 8:
					if (atk$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.atk cannot be set twice.');
					}
					++atk$count;
					this.atk = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 9:
					if (def$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.def cannot be set twice.');
					}
					++def$count;
					this.def = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 10:
					if (speed$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.speed cannot be set twice.');
					}
					++speed$count;
					this.speed = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 11:
					if (view$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.view cannot be set twice.');
					}
					++view$count;
					this.view = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 12:
					if (patrol$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.patrol cannot be set twice.');
					}
					++patrol$count;
					this.patrol = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 13:
					if (follow$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.follow cannot be set twice.');
					}
					++follow$count;
					this.follow = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 14:
					if (reborn$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.reborn cannot be set twice.');
					}
					++reborn$count;
					this.reborn = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 15:
					if (hpCount$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.hpCount cannot be set twice.');
					}
					++hpCount$count;
					this.hpCount = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 16:
					if (identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.identity cannot be set twice.');
					}
					++identity$count;
					this.identity = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 17:
					if (map$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.map cannot be set twice.');
					}
					++map$count;
					this.map = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 18:
					if (x$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.x cannot be set twice.');
					}
					++x$count;
					this.x = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 19:
					if (y$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.y cannot be set twice.');
					}
					++y$count;
					this.y = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 20:
					if (count$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.count cannot be set twice.');
					}
					++count$count;
					this.count = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 21:
					if (radius$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.radius cannot be set twice.');
					}
					++radius$count;
					this.radius = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 22:
					if (timerSkill$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.timerSkill cannot be set twice.');
					}
					++timerSkill$count;
					this.timerSkill = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 23:
					if (hpSkill$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.hpSkill cannot be set twice.');
					}
					++hpSkill$count;
					this.hpSkill = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
