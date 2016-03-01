package org.shell.game.map.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.role.message.ROLE_MAP;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class S2C_MAP_ROLE extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ROLE:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_ROLE.role", "role", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.role.message.ROLE_MAP; });

		private var role$field:org.shell.game.role.message.ROLE_MAP;

		public function clearRole():void {
			role$field = null;
		}

		public function get hasRole():Boolean {
			return role$field != null;
		}

		public function set role(value:org.shell.game.role.message.ROLE_MAP):void {
			role$field = value;
		}

		public function get role():org.shell.game.role.message.ROLE_MAP {
			return role$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRole) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, role$field);
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
						throw new flash.errors.IOError('Bad data format: S2C_MAP_ROLE.role cannot be set twice.');
					}
					++role$count;
					this.role = new org.shell.game.role.message.ROLE_MAP();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.role);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
