package org.shell.game.login.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.role.message.ROLE_SELF;
	import org.shell.error.ERROR_CODE;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class S2C_LOGIN_LOGIN extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ERROR:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.login.message.S2C_LOGIN_LOGIN.error", "error", (1 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.error.ERROR_CODE);

		private var error$field:int;

		private var hasField$0:uint = 0;

		public function clearError():void {
			hasField$0 &= 0xfffffffe;
			error$field = new int();
		}

		public function get hasError():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set error(value:int):void {
			hasField$0 |= 0x1;
			error$field = value;
		}

		public function get error():int {
			return error$field;
		}

		/**
		 *  @private
		 */
		public static const SELF:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.login.message.S2C_LOGIN_LOGIN.self", "self", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.role.message.ROLE_SELF; });

		private var self$field:org.shell.game.role.message.ROLE_SELF;

		public function clearSelf():void {
			self$field = null;
		}

		public function get hasSelf():Boolean {
			return self$field != null;
		}

		public function set self(value:org.shell.game.role.message.ROLE_SELF):void {
			self$field = value;
		}

		public function get self():org.shell.game.role.message.ROLE_SELF {
			return self$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasError) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, error$field);
			}
			if (hasSelf) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, self$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var error$count:uint = 0;
			var self$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (error$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_LOGIN_LOGIN.error cannot be set twice.');
					}
					++error$count;
					this.error = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 2:
					if (self$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_LOGIN_LOGIN.self cannot be set twice.');
					}
					++self$count;
					this.self = new org.shell.game.role.message.ROLE_SELF();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.self);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
