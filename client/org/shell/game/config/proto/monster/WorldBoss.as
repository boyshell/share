package org.shell.game.config.proto.monster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.fight.FixAttributeList;
	import org.shell.game.config.proto.monster.TimerSkillList;
	import org.shell.game.config.proto.monster.HpSkillList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class WorldBoss extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.WorldBoss.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.WorldBoss.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.monster.WorldBoss.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffd;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x2;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const ICON:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.WorldBoss.icon", "icon", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const SKIN:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.monster.WorldBoss.skin", "skin", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const ATTRIBUTE:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.WorldBoss.attribute", "attribute", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.fight.FixAttributeList; });

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
		public static const TIMERSKILL:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.WorldBoss.timerSkill", "timerSkill", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.TimerSkillList; });

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
		public static const HPSKILL:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.WorldBoss.hpSkill", "hpSkill", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.HpSkillList; });

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
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
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
			if (hasTimerSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, timerSkill$field);
			}
			if (hasHpSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, hpSkill$field);
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
			var name$count:uint = 0;
			var level$count:uint = 0;
			var icon$count:uint = 0;
			var skin$count:uint = 0;
			var attribute$count:uint = 0;
			var timerSkill$count:uint = 0;
			var hpSkill$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 4:
					if (icon$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.icon cannot be set twice.');
					}
					++icon$count;
					this.icon = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 5:
					if (skin$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.skin cannot be set twice.');
					}
					++skin$count;
					this.skin = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 6:
					if (attribute$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.attribute cannot be set twice.');
					}
					++attribute$count;
					this.attribute = new org.shell.game.config.proto.fight.FixAttributeList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.attribute);
					break;
				case 7:
					if (timerSkill$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.timerSkill cannot be set twice.');
					}
					++timerSkill$count;
					this.timerSkill = new org.shell.game.config.proto.monster.TimerSkillList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.timerSkill);
					break;
				case 8:
					if (hpSkill$count != 0) {
						throw new flash.errors.IOError('Bad data format: WorldBoss.hpSkill cannot be set twice.');
					}
					++hpSkill$count;
					this.hpSkill = new org.shell.game.config.proto.monster.HpSkillList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.hpSkill);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
