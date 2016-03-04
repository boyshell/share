package org.shell.game.config.proto.monster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.monster.Pmonster;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Group extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PMONSTER:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Group.Pmonster", "pmonster", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.Pmonster; });

		[ArrayElementType("org.shell.game.config.proto.monster.Pmonster")]
		public var pmonster:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var pmonster$index:uint = 0; pmonster$index < this.pmonster.length; ++pmonster$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.pmonster[pmonster$index]);
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
					this.pmonster.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.monster.Pmonster()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
