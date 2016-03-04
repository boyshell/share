package org.shell.game.config.proto.item {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.item.Category;
	import org.shell.game.config.proto.item.Pitem;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Group extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CATEGORY:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.item.Group.Category", "category", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.item.Category; });

		[ArrayElementType("org.shell.game.config.proto.item.Category")]
		public var category:Array = [];

		/**
		 *  @private
		 */
		public static const PITEM:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.item.Group.Pitem", "pitem", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.item.Pitem; });

		[ArrayElementType("org.shell.game.config.proto.item.Pitem")]
		public var pitem:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var category$index:uint = 0; category$index < this.category.length; ++category$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.category[category$index]);
			}
			for (var pitem$index:uint = 0; pitem$index < this.pitem.length; ++pitem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.pitem[pitem$index]);
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
					this.category.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.item.Category()));
					break;
				case 2:
					this.pitem.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.item.Pitem()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
