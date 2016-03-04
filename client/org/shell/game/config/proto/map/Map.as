package org.shell.game.config.proto.map {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.map.Type;
	import org.shell.game.config.proto.map.Position;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Map extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ENTERMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.enterMax", "enterMax", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enterMax$field:int;

		private var hasField$0:uint = 0;

		public function clearEnterMax():void {
			hasField$0 &= 0xfffffffe;
			enterMax$field = new int();
		}

		public function get hasEnterMax():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set enterMax(value:int):void {
			hasField$0 |= 0x1;
			enterMax$field = value;
		}

		public function get enterMax():int {
			return enterMax$field;
		}

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		public function clearId():void {
			hasField$0 &= 0xfffffffd;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x2;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const RESETMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.resetMax", "resetMax", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var resetMax$field:int;

		public function clearResetMax():void {
			hasField$0 &= 0xfffffffb;
			resetMax$field = new int();
		}

		public function get hasResetMax():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set resetMax(value:int):void {
			hasField$0 |= 0x4;
			resetMax$field = value;
		}

		public function get resetMax():int {
			return resetMax$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.map.Map.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.map.Type);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xfffffff7;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x8;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.map.Map.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xffffffef;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x10;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const RES:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.map.Map.res", "res", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var res$field:String;

		public function clearRes():void {
			res$field = null;
		}

		public function get hasRes():Boolean {
			return res$field != null;
		}

		public function set res(value:String):void {
			res$field = value;
		}

		public function get res():String {
			return res$field;
		}

		/**
		 *  @private
		 */
		public static const LINEMINE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.lineMine", "lineMine", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lineMine$field:int;

		public function clearLineMine():void {
			hasField$0 &= 0xffffffdf;
			lineMine$field = new int();
		}

		public function get hasLineMine():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set lineMine(value:int):void {
			hasField$0 |= 0x20;
			lineMine$field = value;
		}

		public function get lineMine():int {
			return lineMine$field;
		}

		/**
		 *  @private
		 */
		public static const LINEMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.lineMax", "lineMax", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lineMax$field:int;

		public function clearLineMax():void {
			hasField$0 &= 0xffffffbf;
			lineMax$field = new int();
		}

		public function get hasLineMax():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set lineMax(value:int):void {
			hasField$0 |= 0x40;
			lineMax$field = value;
		}

		public function get lineMax():int {
			return lineMax$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEMAP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.reliveMap", "reliveMap", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reliveMap$field:int;

		public function clearReliveMap():void {
			hasField$0 &= 0xffffff7f;
			reliveMap$field = new int();
		}

		public function get hasReliveMap():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set reliveMap(value:int):void {
			hasField$0 |= 0x80;
			reliveMap$field = value;
		}

		public function get reliveMap():int {
			return reliveMap$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEPOSITION:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.map.Map.relivePosition", "relivePosition", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.Position; });

		private var relivePosition$field:org.shell.game.config.proto.map.Position;

		public function clearRelivePosition():void {
			relivePosition$field = null;
		}

		public function get hasRelivePosition():Boolean {
			return relivePosition$field != null;
		}

		public function set relivePosition(value:org.shell.game.config.proto.map.Position):void {
			relivePosition$field = value;
		}

		public function get relivePosition():org.shell.game.config.proto.map.Position {
			return relivePosition$field;
		}

		/**
		 *  @private
		 */
		public static const RECOMMENDLEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Map.recommendLevel", "recommendLevel", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var recommendLevel$field:int;

		public function clearRecommendLevel():void {
			hasField$0 &= 0xfffffeff;
			recommendLevel$field = new int();
		}

		public function get hasRecommendLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set recommendLevel(value:int):void {
			hasField$0 |= 0x100;
			recommendLevel$field = value;
		}

		public function get recommendLevel():int {
			return recommendLevel$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasEnterMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, enterMax$field);
			}
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, id$field);
			}
			if (hasResetMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, resetMax$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, type$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, name$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, level$field);
			}
			if (hasRes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, res$field);
			}
			if (hasLineMine) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, lineMine$field);
			}
			if (hasLineMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, lineMax$field);
			}
			if (hasReliveMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reliveMap$field);
			}
			if (hasRelivePosition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, relivePosition$field);
			}
			if (hasRecommendLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, recommendLevel$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var enterMax$count:uint = 0;
			var id$count:uint = 0;
			var resetMax$count:uint = 0;
			var type$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var res$count:uint = 0;
			var lineMine$count:uint = 0;
			var lineMax$count:uint = 0;
			var reliveMap$count:uint = 0;
			var relivePosition$count:uint = 0;
			var recommendLevel$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 11:
					if (enterMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.enterMax cannot be set twice.');
					}
					++enterMax$count;
					this.enterMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 12:
					if (resetMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.resetMax cannot be set twice.');
					}
					++resetMax$count;
					this.resetMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 5:
					if (res$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.res cannot be set twice.');
					}
					++res$count;
					this.res = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 6:
					if (lineMine$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.lineMine cannot be set twice.');
					}
					++lineMine$count;
					this.lineMine = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 7:
					if (lineMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.lineMax cannot be set twice.');
					}
					++lineMax$count;
					this.lineMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 8:
					if (reliveMap$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.reliveMap cannot be set twice.');
					}
					++reliveMap$count;
					this.reliveMap = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 9:
					if (relivePosition$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.relivePosition cannot be set twice.');
					}
					++relivePosition$count;
					this.relivePosition = new org.shell.game.config.proto.map.Position();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.relivePosition);
					break;
				case 10:
					if (recommendLevel$count != 0) {
						throw new flash.errors.IOError('Bad data format: Map.recommendLevel cannot be set twice.');
					}
					++recommendLevel$count;
					this.recommendLevel = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
