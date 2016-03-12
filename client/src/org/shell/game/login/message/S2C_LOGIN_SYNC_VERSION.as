package org.shell.game.login.message {
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
	public dynamic final class S2C_LOGIN_SYNC_VERSION extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CVERSION:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.login.message.S2C_LOGIN_SYNC_VERSION.cVersion", "cVersion", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var cVersion$field:String;

		public function clearCVersion():void {
			cVersion$field = null;
		}

		public function get hasCVersion():Boolean {
			return cVersion$field != null;
		}

		public function set cVersion(value:String):void {
			cVersion$field = value;
		}

		public function get cVersion():String {
			return cVersion$field;
		}

		/**
		 *  @private
		 */
		public static const DVERSION:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.login.message.S2C_LOGIN_SYNC_VERSION.dVersion", "dVersion", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var dVersion$field:String;

		public function clearDVersion():void {
			dVersion$field = null;
		}

		public function get hasDVersion():Boolean {
			return dVersion$field != null;
		}

		public function set dVersion(value:String):void {
			dVersion$field = value;
		}

		public function get dVersion():String {
			return dVersion$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCVersion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, cVersion$field);
			}
			if (hasDVersion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, dVersion$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cVersion$count:uint = 0;
			var dVersion$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cVersion$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_LOGIN_SYNC_VERSION.cVersion cannot be set twice.');
					}
					++cVersion$count;
					this.cVersion = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 2:
					if (dVersion$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_LOGIN_SYNC_VERSION.dVersion cannot be set twice.');
					}
					++dVersion$count;
					this.dVersion = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
