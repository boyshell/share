package org.shell.game.mobject.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.mobject.message.MOBJECT_MOVE;
	import org.shell.game.mobject.message.MOBJECT_POSITION;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class MOBJECT_OBJECT extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const POSITION:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.mobject.message.MOBJECT_OBJECT.position", "position", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.mobject.message.MOBJECT_POSITION; });

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
		public static const CURHP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.mobject.message.MOBJECT_OBJECT.curHp", "curHp", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curHp$field:int;

		private var hasField$0:uint = 0;

		public function clearCurHp():void {
			hasField$0 &= 0xfffffffe;
			curHp$field = new int();
		}

		public function get hasCurHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set curHp(value:int):void {
			hasField$0 |= 0x1;
			curHp$field = value;
		}

		public function get curHp():int {
			return curHp$field;
		}

		/**
		 *  @private
		 */
		public static const MAXHP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.mobject.message.MOBJECT_OBJECT.maxHp", "maxHp", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var maxHp$field:int;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffffd;
			maxHp$field = new int();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set maxHp(value:int):void {
			hasField$0 |= 0x2;
			maxHp$field = value;
		}

		public function get maxHp():int {
			return maxHp$field;
		}

		/**
		 *  @private
		 */
		public static const MOVEINFO:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.mobject.message.MOBJECT_OBJECT.moveInfo", "moveInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.mobject.message.MOBJECT_MOVE; });

		private var moveInfo$field:org.shell.game.mobject.message.MOBJECT_MOVE;

		public function clearMoveInfo():void {
			moveInfo$field = null;
		}

		public function get hasMoveInfo():Boolean {
			return moveInfo$field != null;
		}

		public function set moveInfo(value:org.shell.game.mobject.message.MOBJECT_MOVE):void {
			moveInfo$field = value;
		}

		public function get moveInfo():org.shell.game.mobject.message.MOBJECT_MOVE {
			return moveInfo$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.mobject.message.MOBJECT_OBJECT.level", "level", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffb;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x4;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPosition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, position$field);
			}
			if (hasCurHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, curHp$field);
			}
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, maxHp$field);
			}
			if (hasMoveInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, moveInfo$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var position$count:uint = 0;
			var curHp$count:uint = 0;
			var maxHp$count:uint = 0;
			var moveInfo$count:uint = 0;
			var level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (position$count != 0) {
						throw new flash.errors.IOError('Bad data format: MOBJECT_OBJECT.position cannot be set twice.');
					}
					++position$count;
					this.position = new org.shell.game.mobject.message.MOBJECT_POSITION();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.position);
					break;
				case 2:
					if (curHp$count != 0) {
						throw new flash.errors.IOError('Bad data format: MOBJECT_OBJECT.curHp cannot be set twice.');
					}
					++curHp$count;
					this.curHp = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 3:
					if (maxHp$count != 0) {
						throw new flash.errors.IOError('Bad data format: MOBJECT_OBJECT.maxHp cannot be set twice.');
					}
					++maxHp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 4:
					if (moveInfo$count != 0) {
						throw new flash.errors.IOError('Bad data format: MOBJECT_OBJECT.moveInfo cannot be set twice.');
					}
					++moveInfo$count;
					this.moveInfo = new org.shell.game.mobject.message.MOBJECT_MOVE();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.moveInfo);
					break;
				case 5:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: MOBJECT_OBJECT.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
