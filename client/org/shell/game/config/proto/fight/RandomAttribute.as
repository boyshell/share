package org.shell.game.config.proto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.fight.Attribute;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class RandomAttribute extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.fight.RandomAttribute.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.fight.Attribute);

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
		public static const MIN:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.fight.RandomAttribute.min", "min", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var min$field:int;

		public function clearMin():void {
			hasField$0 &= 0xfffffffd;
			min$field = new int();
		}

		public function get hasMin():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set min(value:int):void {
			hasField$0 |= 0x2;
			min$field = value;
		}

		public function get min():int {
			return min$field;
		}

		/**
		 *  @private
		 */
		public static const MAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.fight.RandomAttribute.max", "max", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max$field:int;

		public function clearMax():void {
			hasField$0 &= 0xfffffffb;
			max$field = new int();
		}

		public function get hasMax():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set max(value:int):void {
			hasField$0 |= 0x4;
			max$field = value;
		}

		public function get max():int {
			return max$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, type$field);
			}
			if (hasMin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, min$field);
			}
			if (hasMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, max$field);
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
			var min$count:uint = 0;
			var max$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: RandomAttribute.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 2:
					if (min$count != 0) {
						throw new flash.errors.IOError('Bad data format: RandomAttribute.min cannot be set twice.');
					}
					++min$count;
					this.min = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 3:
					if (max$count != 0) {
						throw new flash.errors.IOError('Bad data format: RandomAttribute.max cannot be set twice.');
					}
					++max$count;
					this.max = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
