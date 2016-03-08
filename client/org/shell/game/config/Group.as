package org.shell.game.config {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.Item;
	import org.shell.game.config.Monster;
	import org.shell.game.config.Param;
	import org.shell.game.config.Map;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Group extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PARAM:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.Group.param", "param", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.Param; });

		[ArrayElementType("org.shell.game.config.Param")]
		public var param:Array = [];

		/**
		 *  @private
		 */
		public static const MAP:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.Group.map", "map", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.Map; });

		[ArrayElementType("org.shell.game.config.Map")]
		public var map:Array = [];

		/**
		 *  @private
		 */
		public static const MONSTER:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.Group.monster", "monster", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.Monster; });

		[ArrayElementType("org.shell.game.config.Monster")]
		public var monster:Array = [];

		/**
		 *  @private
		 */
		public static const ITEM:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.Group.item", "item", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.Item; });

		[ArrayElementType("org.shell.game.config.Item")]
		public var item:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var param$index:uint = 0; param$index < this.param.length; ++param$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.param[param$index]);
			}
			for (var map$index:uint = 0; map$index < this.map.length; ++map$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.map[map$index]);
			}
			for (var monster$index:uint = 0; monster$index < this.monster.length; ++monster$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.monster[monster$index]);
			}
			for (var item$index:uint = 0; item$index < this.item.length; ++item$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
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
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.param.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.Param()));
					break;
				case 2:
					this.map.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.Map()));
					break;
				case 3:
					this.monster.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.Monster()));
					break;
				case 4:
					this.item.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.Item()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
