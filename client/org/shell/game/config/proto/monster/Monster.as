package org.shell.game.config.proto.monster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.monster.Identity;
	import org.shell.game.config.proto.fight.FixAttributeList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Monster extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REBORN:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.reborn", "reborn", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reborn$field:int;

		private var hasField$0:uint = 0;

		public function clearReborn():void {
			hasField$0 &= 0xfffffffe;
			reborn$field = new int();
		}

		public function get hasReborn():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set reborn(value:int):void {
			hasField$0 |= 0x1;
			reborn$field = value;
		}

		public function get reborn():int {
			return reborn$field;
		}

		/**
		 *  @private
		 */
		public static const HPCOUNT:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.hpCount", "hpCount", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hpCount$field:int;

		public function clearHpCount():void {
			hasField$0 &= 0xfffffffd;
			hpCount$field = new int();
		}

		public function get hasHpCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hpCount(value:int):void {
			hasField$0 |= 0x2;
			hpCount$field = value;
		}

		public function get hpCount():int {
			return hpCount$field;
		}

		/**
		 *  @private
		 */
		public static const IDENTITY:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.monster.Monster.identity", "identity", (13 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.monster.Identity);

		private var identity$field:int;

		public function clearIdentity():void {
			hasField$0 &= 0xfffffffb;
			identity$field = new int();
		}

		public function get hasIdentity():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set identity(value:int):void {
			hasField$0 |= 0x4;
			identity$field = value;
		}

		public function get identity():int {
			return identity$field;
		}

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		public function clearId():void {
			hasField$0 &= 0xfffffff7;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x8;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.Monster.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xffffffef;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x10;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const ICON:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.Monster.icon", "icon", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const SKIN:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.Monster.skin", "skin", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const ATTRIBUTE:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Monster.attribute", "attribute", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.fight.FixAttributeList; });

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
		public static const SPEED:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.speed", "speed", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed$field:int;

		public function clearSpeed():void {
			hasField$0 &= 0xffffffdf;
			speed$field = new int();
		}

		public function get hasSpeed():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set speed(value:int):void {
			hasField$0 |= 0x20;
			speed$field = value;
		}

		public function get speed():int {
			return speed$field;
		}

		/**
		 *  @private
		 */
		public static const VIEW:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.view", "view", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var view$field:int;

		public function clearView():void {
			hasField$0 &= 0xffffffbf;
			view$field = new int();
		}

		public function get hasView():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set view(value:int):void {
			hasField$0 |= 0x40;
			view$field = value;
		}

		public function get view():int {
			return view$field;
		}

		/**
		 *  @private
		 */
		public static const PATROL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.patrol", "patrol", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var patrol$field:int;

		public function clearPatrol():void {
			hasField$0 &= 0xffffff7f;
			patrol$field = new int();
		}

		public function get hasPatrol():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set patrol(value:int):void {
			hasField$0 |= 0x80;
			patrol$field = value;
		}

		public function get patrol():int {
			return patrol$field;
		}

		/**
		 *  @private
		 */
		public static const FOLLOW:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.Monster.follow", "follow", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var follow$field:int;

		public function clearFollow():void {
			hasField$0 &= 0xfffffeff;
			follow$field = new int();
		}

		public function get hasFollow():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set follow(value:int):void {
			hasField$0 |= 0x100;
			follow$field = value;
		}

		public function get follow():int {
			return follow$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasReborn) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reborn$field);
			}
			if (hasHpCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, hpCount$field);
			}
			if (hasIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, identity$field);
			}
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, id$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, name$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, level$field);
			}
			if (hasIcon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, icon$field);
			}
			if (hasSkin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, skin$field);
			}
			if (hasAttribute) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, attribute$field);
			}
			if (hasSpeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, speed$field);
			}
			if (hasView) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, view$field);
			}
			if (hasPatrol) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, patrol$field);
			}
			if (hasFollow) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, follow$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var reborn$count:uint = 0;
			var hpCount$count:uint = 0;
			var identity$count:uint = 0;
			var id$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var icon$count:uint = 0;
			var skin$count:uint = 0;
			var attribute$count:uint = 0;
			var speed$count:uint = 0;
			var view$count:uint = 0;
			var patrol$count:uint = 0;
			var follow$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 11:
					if (reborn$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.reborn cannot be set twice.');
					}
					++reborn$count;
					this.reborn = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 12:
					if (hpCount$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.hpCount cannot be set twice.');
					}
					++hpCount$count;
					this.hpCount = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 13:
					if (identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.identity cannot be set twice.');
					}
					++identity$count;
					this.identity = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 4:
					if (icon$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.icon cannot be set twice.');
					}
					++icon$count;
					this.icon = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 5:
					if (skin$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.skin cannot be set twice.');
					}
					++skin$count;
					this.skin = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 6:
					if (attribute$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.attribute cannot be set twice.');
					}
					++attribute$count;
					this.attribute = new org.shell.game.config.proto.fight.FixAttributeList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.attribute);
					break;
				case 7:
					if (speed$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.speed cannot be set twice.');
					}
					++speed$count;
					this.speed = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 8:
					if (view$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.view cannot be set twice.');
					}
					++view$count;
					this.view = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 9:
					if (patrol$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.patrol cannot be set twice.');
					}
					++patrol$count;
					this.patrol = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 10:
					if (follow$count != 0) {
						throw new flash.errors.IOError('Bad data format: Monster.follow cannot be set twice.');
					}
					++follow$count;
					this.follow = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
