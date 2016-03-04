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
	public dynamic final class S2C_MAP_REMOVE_ROLE extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ROLE:FieldDescriptor_TYPE_FIXED64 = new FieldDescriptor_TYPE_FIXED64("org.shell.game.map.message.S2C_MAP_REMOVE_ROLE.role", "role", (1 << 3) | com.netease.protobuf.WireType.FIXED_64_BIT);

		private var role$field:UInt64;

		public function clearRole():void {
			role$field = null;
		}

		public function get hasRole():Boolean {
			return role$field != null;
		}

		public function set role(value:UInt64):void {
			role$field = value;
		}

		public function get role():UInt64 {
			return role$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRole) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.FIXED_64_BIT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_FIXED64(output, role$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var role$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (role$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_MAP_REMOVE_ROLE.role cannot be set twice.');
					}
					++role$count;
					this.role = com.netease.protobuf.ReadUtils.read_TYPE_FIXED64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
