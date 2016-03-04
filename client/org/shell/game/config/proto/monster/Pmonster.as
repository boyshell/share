package org.shell.game.config.proto.monster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.map.Position;
	import org.shell.game.config.proto.monster.Identity;
	import org.shell.game.config.proto.monster.TimerSkillList;
	import org.shell.game.config.proto.fight.FixAttributeList;
	import org.shell.game.config.proto.monster.HpSkillList;
	import org.shell.game.config.proto.monster.Type;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Pmonster extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const FOLLOW:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.follow", "follow", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var follow$field:int;

		private var hasField$0:uint = 0;

		public function clearFollow():void {
			hasField$0 &= 0xfffffffe;
			follow$field = new int();
		}

		public function get hasFollow():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set follow(value:int):void {
			hasField$0 |= 0x1;
			follow$field = value;
		}

		public function get follow():int {
			return follow$field;
		}

		/**
		 *  @private
		 */
		public static const REBORN:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.reborn", "reborn", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reborn$field:int;

		public function clearReborn():void {
			hasField$0 &= 0xfffffffd;
			reborn$field = new int();
		}

		public function get hasReborn():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set reborn(value:int):void {
			hasField$0 |= 0x2;
			reborn$field = value;
		}

		public function get reborn():int {
			return reborn$field;
		}

		/**
		 *  @private
		 */
		public static const HPCOUNT:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.hpCount", "hpCount", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hpCount$field:int;

		public function clearHpCount():void {
			hasField$0 &= 0xfffffffb;
			hpCount$field = new int();
		}

		public function get hasHpCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set hpCount(value:int):void {
			hasField$0 |= 0x4;
			hpCount$field = value;
		}

		public function get hpCount():int {
			return hpCount$field;
		}

		/**
		 *  @private
		 */
		public static const IDENTITY:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.monster.Pmonster.identity", "identity", (14 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.monster.Identity);

		private var identity$field:int;

		public function clearIdentity():void {
			hasField$0 &= 0xfffffff7;
			identity$field = new int();
		}

		public function get hasIdentity():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set identity(value:int):void {
			hasField$0 |= 0x8;
			identity$field = value;
		}

		public function get identity():int {
			return identity$field;
		}

		/**
		 *  @private
		 */
		public static const MAP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.map", "map", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var map$field:int;

		public function clearMap():void {
			hasField$0 &= 0xffffffef;
			map$field = new int();
		}

		public function get hasMap():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set map(value:int):void {
			hasField$0 |= 0x10;
			map$field = value;
		}

		public function get map():int {
			return map$field;
		}

		/**
		 *  @private
		 */
		public static const POSITION:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Pmonster.position", "position", (16 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.Position; });

		private var position$field:org.shell.game.config.proto.map.Position;

		public function clearPosition():void {
			position$field = null;
		}

		public function get hasPosition():Boolean {
			return position$field != null;
		}

		public function set position(value:org.shell.game.config.proto.map.Position):void {
			position$field = value;
		}

		public function get position():org.shell.game.config.proto.map.Position {
			return position$field;
		}

		/**
		 *  @private
		 */
		public static const COUNT:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.count", "count", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var count$field:int;

		public function clearCount():void {
			hasField$0 &= 0xffffffdf;
			count$field = new int();
		}

		public function get hasCount():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set count(value:int):void {
			hasField$0 |= 0x20;
			count$field = value;
		}

		public function get count():int {
			return count$field;
		}

		/**
		 *  @private
		 */
		public static const TIMERSKILL:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Pmonster.timerSkill", "timerSkill", (18 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.TimerSkillList; });

		private var timerSkill$field:org.shell.game.config.proto.monster.TimerSkillList;

		public function clearTimerSkill():void {
			timerSkill$field = null;
		}

		public function get hasTimerSkill():Boolean {
			return timerSkill$field != null;
		}

		public function set timerSkill(value:org.shell.game.config.proto.monster.TimerSkillList):void {
			timerSkill$field = value;
		}

		public function get timerSkill():org.shell.game.config.proto.monster.TimerSkillList {
			return timerSkill$field;
		}

		/**
		 *  @private
		 */
		public static const HPSKILL:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Pmonster.hpSkill", "hpSkill", (19 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.HpSkillList; });

		private var hpSkill$field:org.shell.game.config.proto.monster.HpSkillList;

		public function clearHpSkill():void {
			hpSkill$field = null;
		}

		public function get hasHpSkill():Boolean {
			return hpSkill$field != null;
		}

		public function set hpSkill(value:org.shell.game.config.proto.monster.HpSkillList):void {
			hpSkill$field = value;
		}

		public function get hpSkill():org.shell.game.config.proto.monster.HpSkillList {
			return hpSkill$field;
		}

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		public function clearId():void {
			hasField$0 &= 0xffffffbf;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x40;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.monster.Pmonster.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.monster.Type);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xffffff7f;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x80;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.Pmonster.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffeff;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x100;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const ICON:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.Pmonster.icon", "icon", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const SKIN:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.Pmonster.skin", "skin", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const ATTRIBUTE:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Pmonster.attribute", "attribute", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.fight.FixAttributeList; });

		private var attribute$field:org.shell.game.config.proto.fight.FixAttributeList;

		public function clearAttribute():void {
			attribute$field = null;
		}

		public function get hasAttribute():Boolean {
			return attribute$field != null;
		}

		public function set attribute(value:org.shell.game.config.proto.fight.FixAttributeList):void {
			attribute$field = value;
		}

		public function get attribute():org.shell.game.config.proto.fight.FixAttributeList {
			return attribute$field;
		}

		/**
		 *  @private
		 */
		public static const SPEED:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.speed", "speed", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed$field:int;

		public function clearSpeed():void {
			hasField$0 &= 0xfffffdff;
			speed$field = new int();
		}

		public function get hasSpeed():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set speed(value:int):void {
			hasField$0 |= 0x200;
			speed$field = value;
		}

		public function get speed():int {
			return speed$field;
		}

		/**
		 *  @private
		 */
		public static const VIEW:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.view", "view", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var view$field:int;

		public function clearView():void {
			hasField$0 &= 0xfffffbff;
			view$field = new int();
		}

		public function get hasView():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set view(value:int):void {
			hasField$0 |= 0x400;
			view$field = value;
		}

		public function get view():int {
			return view$field;
		}

		/**
		 *  @private
		 */
		public static const PATROL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Pmonster.patrol", "patrol", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var patrol$field:int;

		public function clearPatrol():void {
			hasField$0 &= 0xfffff7ff;
			patrol$field = new int();
		}

		public function get hasPatrol():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set patrol(value:int):void {
			hasField$0 |= 0x800;
			patrol$field = value;
		}

		public function get patrol():int {
			return patrol$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasFollow) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, follow$field);
			}
			if (hasReborn) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reborn$field);
			}
			if (hasHpCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, hpCount$field);
			}
			if (hasIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, identity$field);
			}
			if (hasMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, map$field);
			}
			if (hasPosition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 16);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, position$field);
			}
			if (hasCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, count$field);
			}
			if (hasTimerSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 18);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, timerSkill$field);
			}
			if (hasHpSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 19);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, hpSkill$field);
			}
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, id$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, type$field);
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
			if (hasAttribute) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, attribute$field);
			}
			if (hasSpeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, speed$field);
			}
			if (hasView) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, view$field);
			}
			if (hasPatrol) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, patrol$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var follow$count:uint = 0;
			var reborn$count:uint = 0;
			var hpCount$count:uint = 0;
			var identity$count:uint = 0;
			var map$count:uint = 0;
			var position$count:uint = 0;
			var count$count:uint = 0;
			var timerSkill$count:uint = 0;
			var hpSkill$count:uint = 0;
			var id$count:uint = 0;
			var type$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var icon$count:uint = 0;
			var skin$count:uint = 0;
			var attribute$count:uint = 0;
			var speed$count:uint = 0;
			var view$count:uint = 0;
			var patrol$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 11:
					if (follow$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.follow cannot be set twice.');
					}
					++follow$count;
					this.follow = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 12:
					if (reborn$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.reborn cannot be set twice.');
					}
					++reborn$count;
					this.reborn = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 13:
					if (hpCount$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.hpCount cannot be set twice.');
					}
					++hpCount$count;
					this.hpCount = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 14:
					if (identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.identity cannot be set twice.');
					}
					++identity$count;
					this.identity = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 15:
					if (map$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.map cannot be set twice.');
					}
					++map$count;
					this.map = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 16:
					if (position$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.position cannot be set twice.');
					}
					++position$count;
					this.position = new org.shell.game.config.proto.map.Position();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.position);
					break;
				case 17:
					if (count$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.count cannot be set twice.');
					}
					++count$count;
					this.count = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 18:
					if (timerSkill$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.timerSkill cannot be set twice.');
					}
					++timerSkill$count;
					this.timerSkill = new org.shell.game.config.proto.monster.TimerSkillList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.timerSkill);
					break;
				case 19:
					if (hpSkill$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.hpSkill cannot be set twice.');
					}
					++hpSkill$count;
					this.hpSkill = new org.shell.game.config.proto.monster.HpSkillList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.hpSkill);
					break;
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 5:
					if (icon$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.icon cannot be set twice.');
					}
					++icon$count;
					this.icon = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 6:
					if (skin$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.skin cannot be set twice.');
					}
					++skin$count;
					this.skin = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 7:
					if (attribute$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.attribute cannot be set twice.');
					}
					++attribute$count;
					this.attribute = new org.shell.game.config.proto.fight.FixAttributeList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.attribute);
					break;
				case 8:
					if (speed$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.speed cannot be set twice.');
					}
					++speed$count;
					this.speed = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 9:
					if (view$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.view cannot be set twice.');
					}
					++view$count;
					this.view = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 10:
					if (patrol$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmonster.patrol cannot be set twice.');
					}
					++patrol$count;
					this.patrol = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
