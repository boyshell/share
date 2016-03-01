package org.shell.game.map.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.pet.message.PET_MAP;
	import org.shell.game.item.message.ITEM_MAP;
	import org.shell.game.monster.message.MONSTER_MAP;
	import org.shell.game.role.message.ROLE_MAP;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class S2C_MAP_ROUND extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ENTER:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.map.message.S2C_MAP_ROUND.enter", "enter", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearEnter():void {
			hasField$0 &= 0xfffffffe;
			enter$field = new Boolean();
		}

		public function get hasEnter():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set enter(value:Boolean):void {
			hasField$0 |= 0x1;
			enter$field = value;
		}

		public function get enter():Boolean {
			return enter$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND.role", "role", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.role.message.ROLE_MAP; });

		[ArrayElementType("org.shell.game.role.message.ROLE_MAP")]
		public var role:Array = [];

		/**
		 *  @private
		 */
		public static const PET:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND.pet", "pet", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.pet.message.PET_MAP; });

		[ArrayElementType("org.shell.game.pet.message.PET_MAP")]
		public var pet:Array = [];

		/**
		 *  @private
		 */
		public static const MONSTER:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND.monster", "monster", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.monster.message.MONSTER_MAP; });

		[ArrayElementType("org.shell.game.monster.message.MONSTER_MAP")]
		public var monster:Array = [];

		/**
		 *  @private
		 */
		public static const ITEM:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND.item", "item", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.item.message.ITEM_MAP; });

		[ArrayElementType("org.shell.game.item.message.ITEM_MAP")]
		public var item:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasEnter) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, enter$field);
			}
			for (var role$index:uint = 0; role$index < this.role.length; ++role$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.role[role$index]);
			}
			for (var pet$index:uint = 0; pet$index < this.pet.length; ++pet$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.pet[pet$index]);
			}
			for (var monster$index:uint = 0; monster$index < this.monster.length; ++monster$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.monster[monster$index]);
			}
			for (var item$index:uint = 0; item$index < this.item.length; ++item$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.item[item$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var enter$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (enter$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_MAP_ROUND.enter cannot be set twice.');
					}
					++enter$count;
					this.enter = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 2:
					this.role.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.role.message.ROLE_MAP()));
					break;
				case 3:
					this.pet.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.pet.message.PET_MAP()));
					break;
				case 4:
					this.monster.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.monster.message.MONSTER_MAP()));
					break;
				case 5:
					this.item.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.item.message.ITEM_MAP()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
