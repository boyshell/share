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
	public dynamic final class S2C_MAP_REMOVE_PET extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PET:FieldDescriptor_TYPE_FIXED64 = new FieldDescriptor_TYPE_FIXED64("org.shell.game.map.message.S2C_MAP_REMOVE_PET.pet", "pet", (1 << 3) | com.netease.protobuf.WireType.FIXED_64_BIT);

		private var pet$field:UInt64;

		public function clearPet():void {
			pet$field = null;
		}

		public function get hasPet():Boolean {
			return pet$field != null;
		}

		public function set pet(value:UInt64):void {
			pet$field = value;
		}

		public function get pet():UInt64 {
			return pet$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.FIXED_64_BIT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_FIXED64(output, pet$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var pet$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (pet$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_MAP_REMOVE_PET.pet cannot be set twice.');
					}
					++pet$count;
					this.pet = com.netease.protobuf.ReadUtils.read_TYPE_FIXED64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
