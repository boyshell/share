package org.shell.game.move.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.mobject.message.MOBJECT_POSITION;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class C2S_MOVE_ROLE_MOVE extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PATH:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.move.message.C2S_MOVE_ROLE_MOVE.path", "path", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.mobject.message.MOBJECT_POSITION; });

		[ArrayElementType("org.shell.game.mobject.message.MOBJECT_POSITION")]
		public var path:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var path$index:uint = 0; path$index < this.path.length; ++path$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.path[path$index]);
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
					this.path.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.mobject.message.MOBJECT_POSITION()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
