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
	public dynamic final class S2C_MAP_REMOVE_MONSTER extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MONSTER:FieldDescriptor_TYPE_INT64 = new FieldDescriptor_TYPE_INT64("org.shell.game.map.message.S2C_MAP_REMOVE_MONSTER.monster", "monster", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var monster$field:Int64;

		public function clearMonster():void {
			monster$field = null;
		}

		public function get hasMonster():Boolean {
			return monster$field != null;
		}

		public function set monster(value:Int64):void {
			monster$field = value;
		}

		public function get monster():Int64 {
			return monster$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMonster) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT64(output, monster$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var monster$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (monster$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_MAP_REMOVE_MONSTER.monster cannot be set twice.');
					}
					++monster$count;
					this.monster = com.netease.protobuf.ReadUtils.read_TYPE_INT64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
