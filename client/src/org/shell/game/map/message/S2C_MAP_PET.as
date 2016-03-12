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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class S2C_MAP_PET extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PET:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_PET.pet", "pet", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.pet.message.PET_MAP; });

		private var pet$field:org.shell.game.pet.message.PET_MAP;

		public function clearPet():void {
			pet$field = null;
		}

		public function get hasPet():Boolean {
			return pet$field != null;
		}

		public function set pet(value:org.shell.game.pet.message.PET_MAP):void {
			pet$field = value;
		}

		public function get pet():org.shell.game.pet.message.PET_MAP {
			return pet$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, pet$field);
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
						throw new flash.errors.IOError('Bad data format: S2C_MAP_PET.pet cannot be set twice.');
					}
					++pet$count;
					this.pet = new org.shell.game.pet.message.PET_MAP();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.pet);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
