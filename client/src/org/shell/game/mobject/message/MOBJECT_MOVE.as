package org.shell.game.mobject.message {
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
	public dynamic final class MOBJECT_MOVE extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SPEED:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.mobject.message.MOBJECT_MOVE.speed", "speed", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed$field:int;

		private var hasField$0:uint = 0;

		public function clearSpeed():void {
			hasField$0 &= 0xfffffffe;
			speed$field = new int();
		}

		public function get hasSpeed():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set speed(value:int):void {
			hasField$0 |= 0x1;
			speed$field = value;
		}

		public function get speed():int {
			return speed$field;
		}

		/**
		 *  @private
		 */
		public static const PATH:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.mobject.message.MOBJECT_MOVE.path", "path", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.mobject.message.MOBJECT_POSITION; });

		[ArrayElementType("org.shell.game.mobject.message.MOBJECT_POSITION")]
		public var path:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSpeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, speed$field);
			}
			for (var path$index:uint = 0; path$index < this.path.length; ++path$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
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
			var speed$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (speed$count != 0) {
						throw new flash.errors.IOError('Bad data format: MOBJECT_MOVE.speed cannot be set twice.');
					}
					++speed$count;
					this.speed = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
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
