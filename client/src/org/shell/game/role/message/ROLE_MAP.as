package org.shell.game.role.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.mobject.message.MOBJECT_OBJECT;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class ROLE_MAP extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_FIXED64 = new FieldDescriptor_TYPE_FIXED64("org.shell.game.role.message.ROLE_MAP.id", "id", (1 << 3) | com.netease.protobuf.WireType.FIXED_64_BIT);

		private var id$field:UInt64;

		public function clearId():void {
			id$field = null;
		}

		public function get hasId():Boolean {
			return id$field != null;
		}

		public function set id(value:UInt64):void {
			id$field = value;
		}

		public function get id():UInt64 {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.role.message.ROLE_MAP.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		public static const SERVER:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.role.message.ROLE_MAP.server", "server", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var server$field:int;

		private var hasField$0:uint = 0;

		public function clearServer():void {
			hasField$0 &= 0xfffffffe;
			server$field = new int();
		}

		public function get hasServer():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set server(value:int):void {
			hasField$0 |= 0x1;
			server$field = value;
		}

		public function get server():int {
			return server$field;
		}

		/**
		 *  @private
		 */
		public static const PLATFORM:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.role.message.ROLE_MAP.platform", "platform", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var platform$field:int;

		public function clearPlatform():void {
			hasField$0 &= 0xfffffffd;
			platform$field = new int();
		}

		public function get hasPlatform():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set platform(value:int):void {
			hasField$0 |= 0x2;
			platform$field = value;
		}

		public function get platform():int {
			return platform$field;
		}

		/**
		 *  @private
		 */
		public static const BASE:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.role.message.ROLE_MAP.base", "base", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.mobject.message.MOBJECT_OBJECT; });

		private var base$field:org.shell.game.mobject.message.MOBJECT_OBJECT;

		public function clearBase():void {
			base$field = null;
		}

		public function get hasBase():Boolean {
			return base$field != null;
		}

		public function set base(value:org.shell.game.mobject.message.MOBJECT_OBJECT):void {
			base$field = value;
		}

		public function get base():org.shell.game.mobject.message.MOBJECT_OBJECT {
			return base$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.FIXED_64_BIT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_FIXED64(output, id$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, name$field);
			}
			if (hasServer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, server$field);
			}
			if (hasPlatform) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, platform$field);
			}
			if (hasBase) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, base$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var name$count:uint = 0;
			var server$count:uint = 0;
			var platform$count:uint = 0;
			var base$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ROLE_MAP.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_FIXED64(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ROLE_MAP.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 3:
					if (server$count != 0) {
						throw new flash.errors.IOError('Bad data format: ROLE_MAP.server cannot be set twice.');
					}
					++server$count;
					this.server = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 4:
					if (platform$count != 0) {
						throw new flash.errors.IOError('Bad data format: ROLE_MAP.platform cannot be set twice.');
					}
					++platform$count;
					this.platform = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 5:
					if (base$count != 0) {
						throw new flash.errors.IOError('Bad data format: ROLE_MAP.base cannot be set twice.');
					}
					++base$count;
					this.base = new org.shell.game.mobject.message.MOBJECT_OBJECT();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.base);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
