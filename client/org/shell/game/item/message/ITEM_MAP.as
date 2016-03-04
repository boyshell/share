package org.shell.game.item.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.mobject.message.MOBJECT_POSITION;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class ITEM_MAP extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT64 = new FieldDescriptor_TYPE_INT64("org.shell.game.item.message.ITEM_MAP.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:Int64;

		public function clearId():void {
			id$field = null;
		}

		public function get hasId():Boolean {
			return id$field != null;
		}

		public function set id(value:Int64):void {
			id$field = value;
		}

		public function get id():Int64 {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const MODEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.item.message.ITEM_MAP.model", "model", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var model$field:int;

		private var hasField$0:uint = 0;

		public function clearModel():void {
			hasField$0 &= 0xfffffffe;
			model$field = new int();
		}

		public function get hasModel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set model(value:int):void {
			hasField$0 |= 0x1;
			model$field = value;
		}

		public function get model():int {
			return model$field;
		}

		/**
		 *  @private
		 */
		public static const POSITION:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.item.message.ITEM_MAP.position", "position", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.mobject.message.MOBJECT_POSITION; });

		private var position$field:org.shell.game.mobject.message.MOBJECT_POSITION;

		public function clearPosition():void {
			position$field = null;
		}

		public function get hasPosition():Boolean {
			return position$field != null;
		}

		public function set position(value:org.shell.game.mobject.message.MOBJECT_POSITION):void {
			position$field = value;
		}

		public function get position():org.shell.game.mobject.message.MOBJECT_POSITION {
			return position$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT64(output, id$field);
			}
			if (hasModel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, model$field);
			}
			if (hasPosition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, position$field);
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
			var model$count:uint = 0;
			var position$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ITEM_MAP.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT64(input);
					break;
				case 2:
					if (model$count != 0) {
						throw new flash.errors.IOError('Bad data format: ITEM_MAP.model cannot be set twice.');
					}
					++model$count;
					this.model = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 3:
					if (position$count != 0) {
						throw new flash.errors.IOError('Bad data format: ITEM_MAP.position cannot be set twice.');
					}
					++position$count;
					this.position = new org.shell.game.mobject.message.MOBJECT_POSITION();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.position);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
