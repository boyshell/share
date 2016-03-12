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
	public dynamic final class S2C_MAP_ROUND_CHANGE extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ADDROLE:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.addRole", "addRole", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.role.message.ROLE_MAP; });

		[ArrayElementType("org.shell.game.role.message.ROLE_MAP")]
		public var addRole:Array = [];

		/**
		 *  @private
		 */
		public static const ADDPET:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.addPet", "addPet", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.pet.message.PET_MAP; });

		[ArrayElementType("org.shell.game.pet.message.PET_MAP")]
		public var addPet:Array = [];

		/**
		 *  @private
		 */
		public static const ADDMONSTER:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.addMonster", "addMonster", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.monster.message.MONSTER_MAP; });

		[ArrayElementType("org.shell.game.monster.message.MONSTER_MAP")]
		public var addMonster:Array = [];

		/**
		 *  @private
		 */
		public static const ADDITEM:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.addItem", "addItem", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.item.message.ITEM_MAP; });

		[ArrayElementType("org.shell.game.item.message.ITEM_MAP")]
		public var addItem:Array = [];

		/**
		 *  @private
		 */
		public static const REMOVEROLE:RepeatedFieldDescriptor_TYPE_FIXED64 = new RepeatedFieldDescriptor_TYPE_FIXED64("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.removeRole", "removeRole", (5 << 3) | com.netease.protobuf.WireType.FIXED_64_BIT);

		[ArrayElementType("UInt64")]
		public var removeRole:Array = [];

		/**
		 *  @private
		 */
		public static const REMOVEPET:RepeatedFieldDescriptor_TYPE_FIXED64 = new RepeatedFieldDescriptor_TYPE_FIXED64("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.removePet", "removePet", (6 << 3) | com.netease.protobuf.WireType.FIXED_64_BIT);

		[ArrayElementType("UInt64")]
		public var removePet:Array = [];

		/**
		 *  @private
		 */
		public static const REMOVEMONSTER:RepeatedFieldDescriptor_TYPE_INT64 = new RepeatedFieldDescriptor_TYPE_INT64("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.removeMonster", "removeMonster", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("Int64")]
		public var removeMonster:Array = [];

		/**
		 *  @private
		 */
		public static const REMOVEITEM:RepeatedFieldDescriptor_TYPE_INT64 = new RepeatedFieldDescriptor_TYPE_INT64("org.shell.game.map.message.S2C_MAP_ROUND_CHANGE.removeItem", "removeItem", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("Int64")]
		public var removeItem:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var addRole$index:uint = 0; addRole$index < this.addRole.length; ++addRole$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.addRole[addRole$index]);
			}
			for (var addPet$index:uint = 0; addPet$index < this.addPet.length; ++addPet$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.addPet[addPet$index]);
			}
			for (var addMonster$index:uint = 0; addMonster$index < this.addMonster.length; ++addMonster$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.addMonster[addMonster$index]);
			}
			for (var addItem$index:uint = 0; addItem$index < this.addItem.length; ++addItem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.addItem[addItem$index]);
			}
			for (var removeRole$index:uint = 0; removeRole$index < this.removeRole.length; ++removeRole$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.FIXED_64_BIT, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_FIXED64(output, this.removeRole[removeRole$index]);
			}
			for (var removePet$index:uint = 0; removePet$index < this.removePet.length; ++removePet$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.FIXED_64_BIT, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_FIXED64(output, this.removePet[removePet$index]);
			}
			for (var removeMonster$index:uint = 0; removeMonster$index < this.removeMonster.length; ++removeMonster$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_INT64(output, this.removeMonster[removeMonster$index]);
			}
			for (var removeItem$index:uint = 0; removeItem$index < this.removeItem.length; ++removeItem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_INT64(output, this.removeItem[removeItem$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.addRole.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.role.message.ROLE_MAP()));
					break;
				case 2:
					this.addPet.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.pet.message.PET_MAP()));
					break;
				case 3:
					this.addMonster.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.monster.message.MONSTER_MAP()));
					break;
				case 4:
					this.addItem.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.item.message.ITEM_MAP()));
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read_TYPE_FIXED64, this.removeRole);
						break;
					}
					this.removeRole.push(com.netease.protobuf.ReadUtils.read_TYPE_FIXED64(input));
					break;
				case 6:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read_TYPE_FIXED64, this.removePet);
						break;
					}
					this.removePet.push(com.netease.protobuf.ReadUtils.read_TYPE_FIXED64(input));
					break;
				case 7:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read_TYPE_INT64, this.removeMonster);
						break;
					}
					this.removeMonster.push(com.netease.protobuf.ReadUtils.read_TYPE_INT64(input));
					break;
				case 8:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read_TYPE_INT64, this.removeItem);
						break;
					}
					this.removeItem.push(com.netease.protobuf.ReadUtils.read_TYPE_INT64(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
