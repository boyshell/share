package org.shell.game.map.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class S2C_MAP_SYNC_LINE extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MAP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.map.message.S2C_MAP_SYNC_LINE.map", "map", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var map$field:int;

		private var hasField$0:uint = 0;

		public function clearMap():void {
			hasField$0 &= 0xfffffffe;
			map$field = new int();
		}

		public function get hasMap():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set map(value:int):void {
			hasField$0 |= 0x1;
			map$field = value;
		}

		public function get map():int {
			return map$field;
		}

		/**
		 *  @private
		 */
		public static const OPENLINE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.map.message.S2C_MAP_SYNC_LINE.openLine", "openLine", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var openLine$field:int;

		public function clearOpenLine():void {
			hasField$0 &= 0xfffffffd;
			openLine$field = new int();
		}

		public function get hasOpenLine():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set openLine(value:int):void {
			hasField$0 |= 0x2;
			openLine$field = value;
		}

		public function get openLine():int {
			return openLine$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, map$field);
			}
			if (hasOpenLine) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, openLine$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var map$count:uint = 0;
			var openLine$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (map$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_MAP_SYNC_LINE.map cannot be set twice.');
					}
					++map$count;
					this.map = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (openLine$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_MAP_SYNC_LINE.openLine cannot be set twice.');
					}
					++openLine$count;
					this.openLine = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
