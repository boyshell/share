package org.shell.game.config.proto.map {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.map.Position;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Common extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Common.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.map.Common.name", "name", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Common.level", "level", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffffd;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x2;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const RES:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.map.Common.res", "res", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LINEMINE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Common.lineMine", "lineMine", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lineMine$field:int;

		public function clearLineMine():void {
			hasField$0 &= 0xfffffffb;
			lineMine$field = new int();
		}

		public function get hasLineMine():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set lineMine(value:int):void {
			hasField$0 |= 0x4;
			lineMine$field = value;
		}

		public function get lineMine():int {
			return lineMine$field;
		}

		/**
		 *  @private
		 */
		public static const LINEMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Common.lineMax", "lineMax", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lineMax$field:int;

		public function clearLineMax():void {
			hasField$0 &= 0xfffffff7;
			lineMax$field = new int();
		}

		public function get hasLineMax():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set lineMax(value:int):void {
			hasField$0 |= 0x8;
			lineMax$field = value;
		}

		public function get lineMax():int {
			return lineMax$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEMAP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Common.reliveMap", "reliveMap", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reliveMap$field:int;

		public function clearReliveMap():void {
			hasField$0 &= 0xffffffef;
			reliveMap$field = new int();
		}

		public function get hasReliveMap():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set reliveMap(value:int):void {
			hasField$0 |= 0x10;
			reliveMap$field = value;
		}

		public function get reliveMap():int {
			return reliveMap$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEPOSITION:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.map.Common.relivePosition", "relivePosition", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.Position; });

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
		public static const RECOMMENDLEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Common.recommendLevel", "recommendLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var recommendLevel$field:int;

		public function clearRecommendLevel():void {
			hasField$0 &= 0xffffffdf;
			recommendLevel$field = new int();
		}

		public function get hasRecommendLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set recommendLevel(value:int):void {
			hasField$0 |= 0x20;
			recommendLevel$field = value;
		}

		public function get recommendLevel():int {
			return recommendLevel$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, id$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, name$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, level$field);
			}
			if (hasRes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, res$field);
			}
			if (hasLineMine) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, lineMine$field);
			}
			if (hasLineMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, lineMax$field);
			}
			if (hasReliveMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reliveMap$field);
			}
			if (hasRelivePosition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, relivePosition$field);
			}
			if (hasRecommendLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
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
			var id$count:uint = 0;
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
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 3:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 4:
					if (res$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.res cannot be set twice.');
					}
					++res$count;
					this.res = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 5:
					if (lineMine$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.lineMine cannot be set twice.');
					}
					++lineMine$count;
					this.lineMine = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 6:
					if (lineMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.lineMax cannot be set twice.');
					}
					++lineMax$count;
					this.lineMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 7:
					if (reliveMap$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.reliveMap cannot be set twice.');
					}
					++reliveMap$count;
					this.reliveMap = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 8:
					if (relivePosition$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.relivePosition cannot be set twice.');
					}
					++relivePosition$count;
					this.relivePosition = new org.shell.game.config.proto.map.Position();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.relivePosition);
					break;
				case 9:
					if (recommendLevel$count != 0) {
						throw new flash.errors.IOError('Bad data format: Common.recommendLevel cannot be set twice.');
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
