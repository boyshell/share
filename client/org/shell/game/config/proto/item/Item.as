package org.shell.game.config.proto.item {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.fight.RandomAttributeList;
	import org.shell.game.config.proto.item.Type;
	import org.shell.game.config.proto.item.Position;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Item extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.item.Item.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		private var hasField$0:uint = 0;

		public function clearId():void {
			hasField$0 &= 0xfffffffe;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x1;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.item.Item.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.item.Type);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xfffffffd;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x2;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.item.Item.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const DESC:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.item.Item.desc", "desc", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var desc$field:String;

		public function clearDesc():void {
			desc$field = null;
		}

		public function get hasDesc():Boolean {
			return desc$field != null;
		}

		public function set desc(value:String):void {
			desc$field = value;
		}

		public function get desc():String {
			return desc$field;
		}

		/**
		 *  @private
		 */
		public static const ICON:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.item.Item.icon", "icon", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var icon$field:String;

		public function clearIcon():void {
			icon$field = null;
		}

		public function get hasIcon():Boolean {
			return icon$field != null;
		}

		public function set icon(value:String):void {
			icon$field = value;
		}

		public function get icon():String {
			return icon$field;
		}

		/**
		 *  @private
		 */
		public static const POSITION:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.item.Item.position", "position", (6 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.item.Position);

		private var position$field:int;

		public function clearPosition():void {
			hasField$0 &= 0xfffffffb;
			position$field = new int();
		}

		public function get hasPosition():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set position(value:int):void {
			hasField$0 |= 0x4;
			position$field = value;
		}

		public function get position():int {
			return position$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.item.Item.level", "level", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffff7;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x8;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const BASEATRRIBUTE:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.item.Item.baseAtrribute", "baseAtrribute", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.fight.RandomAttributeList; });

		private var baseAtrribute$field:org.shell.game.config.proto.fight.RandomAttributeList;

		public function clearBaseAtrribute():void {
			baseAtrribute$field = null;
		}

		public function get hasBaseAtrribute():Boolean {
			return baseAtrribute$field != null;
		}

		public function set baseAtrribute(value:org.shell.game.config.proto.fight.RandomAttributeList):void {
			baseAtrribute$field = value;
		}

		public function get baseAtrribute():org.shell.game.config.proto.fight.RandomAttributeList {
			return baseAtrribute$field;
		}

		/**
		 *  @private
		 */
		public static const APPENDATTRIBUTE:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.item.Item.appendAttribute", "appendAttribute", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.fight.RandomAttributeList; });

		private var appendAttribute$field:org.shell.game.config.proto.fight.RandomAttributeList;

		public function clearAppendAttribute():void {
			appendAttribute$field = null;
		}

		public function get hasAppendAttribute():Boolean {
			return appendAttribute$field != null;
		}

		public function set appendAttribute(value:org.shell.game.config.proto.fight.RandomAttributeList):void {
			appendAttribute$field = value;
		}

		public function get appendAttribute():org.shell.game.config.proto.fight.RandomAttributeList {
			return appendAttribute$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, id$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, type$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, name$field);
			}
			if (hasDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, desc$field);
			}
			if (hasIcon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, icon$field);
			}
			if (hasPosition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, position$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, level$field);
			}
			if (hasBaseAtrribute) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, baseAtrribute$field);
			}
			if (hasAppendAttribute) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, appendAttribute$field);
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
			var type$count:uint = 0;
			var name$count:uint = 0;
			var desc$count:uint = 0;
			var icon$count:uint = 0;
			var position$count:uint = 0;
			var level$count:uint = 0;
			var baseAtrribute$count:uint = 0;
			var appendAttribute$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 4:
					if (desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.desc cannot be set twice.');
					}
					++desc$count;
					this.desc = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 5:
					if (icon$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.icon cannot be set twice.');
					}
					++icon$count;
					this.icon = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 6:
					if (position$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.position cannot be set twice.');
					}
					++position$count;
					this.position = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 7:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 8:
					if (baseAtrribute$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.baseAtrribute cannot be set twice.');
					}
					++baseAtrribute$count;
					this.baseAtrribute = new org.shell.game.config.proto.fight.RandomAttributeList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.baseAtrribute);
					break;
				case 9:
					if (appendAttribute$count != 0) {
						throw new flash.errors.IOError('Bad data format: Item.appendAttribute cannot be set twice.');
					}
					++appendAttribute$count;
					this.appendAttribute = new org.shell.game.config.proto.fight.RandomAttributeList();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.appendAttribute);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
