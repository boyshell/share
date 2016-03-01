package org.shell.game.config.proto.item {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.item.Type;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Category extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.item.Category.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.item.Type);

		private var type$field:int;

		private var hasField$0:uint = 0;

		public function clearType():void {
			hasField$0 &= 0xfffffffe;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x1;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const MERGE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.item.Category.merge", "merge", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var merge$field:int;

		public function clearMerge():void {
			hasField$0 &= 0xfffffffd;
			merge$field = new int();
		}

		public function get hasMerge():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set merge(value:int):void {
			hasField$0 |= 0x2;
			merge$field = value;
		}

		public function get merge():int {
			return merge$field;
		}

		/**
		 *  @private
		 */
		public static const USE:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.item.Category.use", "__use", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var use$field:Boolean;

		public function clearUse():void {
			hasField$0 &= 0xfffffffb;
			use$field = new Boolean();
		}

		public function get hasUse():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set __use(value:Boolean):void {
			hasField$0 |= 0x4;
			use$field = value;
		}

		public function get __use():Boolean {
			return use$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, type$field);
			}
			if (hasMerge) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, merge$field);
			}
			if (hasUse) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, use$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var merge$count:uint = 0;
			var use$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 2:
					if (merge$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.merge cannot be set twice.');
					}
					++merge$count;
					this.merge = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 3:
					if (use$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.__use cannot be set twice.');
					}
					++use$count;
					this.__use = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
