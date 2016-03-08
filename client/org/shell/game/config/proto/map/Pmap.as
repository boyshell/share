package org.shell.game.config.proto.map {
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
	public dynamic final class Pmap extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GUAJIPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.guajiProtect", "guajiProtect", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guajiProtect$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearGuajiProtect():void {
			hasField$0 &= 0xfffffffe;
			guajiProtect$field = new Boolean();
		}

		public function get hasGuajiProtect():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set guajiProtect(value:Boolean):void {
			hasField$0 |= 0x1;
			guajiProtect$field = value;
		}

		public function get guajiProtect():Boolean {
			return guajiProtect$field;
		}

		/**
		 *  @private
		 */
		public static const ENTERMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.enterMax", "enterMax", (22 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enterMax$field:int;

		public function clearEnterMax():void {
			hasField$0 &= 0xfffffffd;
			enterMax$field = new int();
		}

		public function get hasEnterMax():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set enterMax(value:int):void {
			hasField$0 |= 0x2;
			enterMax$field = value;
		}

		public function get enterMax():int {
			return enterMax$field;
		}

		/**
		 *  @private
		 */
		public static const RIDE:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.ride", "ride", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ride$field:Boolean;

		public function clearRide():void {
			hasField$0 &= 0xfffffffb;
			ride$field = new Boolean();
		}

		public function get hasRide():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set ride(value:Boolean):void {
			hasField$0 |= 0x4;
			ride$field = value;
		}

		public function get ride():Boolean {
			return ride$field;
		}

		/**
		 *  @private
		 */
		public static const RESETMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.resetMax", "resetMax", (23 << 3) | com.netease.protobuf.WireType.VARINT);

		private var resetMax$field:int;

		public function clearResetMax():void {
			hasField$0 &= 0xfffffff7;
			resetMax$field = new int();
		}

		public function get hasResetMax():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set resetMax(value:int):void {
			hasField$0 |= 0x8;
			resetMax$field = value;
		}

		public function get resetMax():int {
			return resetMax$field;
		}

		/**
		 *  @private
		 */
		public static const CHANGEPKMODE:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.changePkMode", "changePkMode", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var changePkMode$field:Boolean;

		public function clearChangePkMode():void {
			hasField$0 &= 0xffffffef;
			changePkMode$field = new Boolean();
		}

		public function get hasChangePkMode():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set changePkMode(value:Boolean):void {
			hasField$0 |= 0x10;
			changePkMode$field = value;
		}

		public function get changePkMode():Boolean {
			return changePkMode$field;
		}

		/**
		 *  @private
		 */
		public static const KILLLEGAL:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.killLegal", "killLegal", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var killLegal$field:Boolean;

		public function clearKillLegal():void {
			hasField$0 &= 0xffffffdf;
			killLegal$field = new Boolean();
		}

		public function get hasKillLegal():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set killLegal(value:Boolean):void {
			hasField$0 |= 0x20;
			killLegal$field = value;
		}

		public function get killLegal():Boolean {
			return killLegal$field;
		}

		/**
		 *  @private
		 */
		public static const HIDETASK:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.hideTask", "hideTask", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hideTask$field:Boolean;

		public function clearHideTask():void {
			hasField$0 &= 0xffffffbf;
			hideTask$field = new Boolean();
		}

		public function get hasHideTask():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set hideTask(value:Boolean):void {
			hasField$0 |= 0x40;
			hideTask$field = value;
		}

		public function get hideTask():Boolean {
			return hideTask$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVESEC:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.reliveSec", "reliveSec", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reliveSec$field:int;

		public function clearReliveSec():void {
			hasField$0 &= 0xffffff7f;
			reliveSec$field = new int();
		}

		public function get hasReliveSec():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set reliveSec(value:int):void {
			hasField$0 |= 0x80;
			reliveSec$field = value;
		}

		public function get reliveSec():int {
			return reliveSec$field;
		}

		/**
		 *  @private
		 */
		public static const LINEMINE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.lineMine", "lineMine", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lineMine$field:int;

		public function clearLineMine():void {
			hasField$0 &= 0xfffffeff;
			lineMine$field = new int();
		}

		public function get hasLineMine():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set lineMine(value:int):void {
			hasField$0 |= 0x100;
			lineMine$field = value;
		}

		public function get lineMine():int {
			return lineMine$field;
		}

		/**
		 *  @private
		 */
		public static const LINEMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.lineMax", "lineMax", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var lineMax$field:int;

		public function clearLineMax():void {
			hasField$0 &= 0xfffffdff;
			lineMax$field = new int();
		}

		public function get hasLineMax():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set lineMax(value:int):void {
			hasField$0 |= 0x200;
			lineMax$field = value;
		}

		public function get lineMax():int {
			return lineMax$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEMAP:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.reliveMap", "reliveMap", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reliveMap$field:int;

		public function clearReliveMap():void {
			hasField$0 &= 0xfffffbff;
			reliveMap$field = new int();
		}

		public function get hasReliveMap():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set reliveMap(value:int):void {
			hasField$0 |= 0x400;
			reliveMap$field = value;
		}

		public function get reliveMap():int {
			return reliveMap$field;
		}

		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var id$field:int;

		public function clearId():void {
			hasField$0 &= 0xfffff7ff;
			id$field = new int();
		}

		public function get hasId():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set id(value:int):void {
			hasField$0 |= 0x800;
			id$field = value;
		}

		public function get id():int {
			return id$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xffffefff;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x1000;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.map.Pmap.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const LEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.level", "level", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xffffdfff;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x2000;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const RES:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.map.Pmap.res", "res", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const RELIVEPANEL:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.relivePanel", "relivePanel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var relivePanel$field:Boolean;

		public function clearRelivePanel():void {
			hasField$0 &= 0xffffbfff;
			relivePanel$field = new Boolean();
		}

		public function get hasRelivePanel():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set relivePanel(value:Boolean):void {
			hasField$0 |= 0x4000;
			relivePanel$field = value;
		}

		public function get relivePanel():Boolean {
			return relivePanel$field;
		}

		/**
		 *  @private
		 */
		public static const JUMP:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.jump", "jump", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var jump$field:Boolean;

		public function clearJump():void {
			hasField$0 &= 0xffff7fff;
			jump$field = new Boolean();
		}

		public function get hasJump():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set jump(value:Boolean):void {
			hasField$0 |= 0x8000;
			jump$field = value;
		}

		public function get jump():Boolean {
			return jump$field;
		}

		/**
		 *  @private
		 */
		public static const KIDPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.kidProtect", "kidProtect", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var kidProtect$field:Boolean;

		public function clearKidProtect():void {
			hasField$0 &= 0xfffeffff;
			kidProtect$field = new Boolean();
		}

		public function get hasKidProtect():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set kidProtect(value:Boolean):void {
			hasField$0 |= 0x10000;
			kidProtect$field = value;
		}

		public function get kidProtect():Boolean {
			return kidProtect$field;
		}

		/**
		 *  @private
		 */
		public static const LEVELPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.levelProtect", "levelProtect", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var levelProtect$field:Boolean;

		public function clearLevelProtect():void {
			hasField$0 &= 0xfffdffff;
			levelProtect$field = new Boolean();
		}

		public function get hasLevelProtect():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set levelProtect(value:Boolean):void {
			hasField$0 |= 0x20000;
			levelProtect$field = value;
		}

		public function get levelProtect():Boolean {
			return levelProtect$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEPOSITION:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.map.Pmap.relivePosition", "relivePosition", (20 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var relivePosition$field:String;

		public function clearRelivePosition():void {
			relivePosition$field = null;
		}

		public function get hasRelivePosition():Boolean {
			return relivePosition$field != null;
		}

		public function set relivePosition(value:String):void {
			relivePosition$field = value;
		}

		public function get relivePosition():String {
			return relivePosition$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Pmap.reliveProtect", "reliveProtect", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reliveProtect$field:Boolean;

		public function clearReliveProtect():void {
			hasField$0 &= 0xfffbffff;
			reliveProtect$field = new Boolean();
		}

		public function get hasReliveProtect():Boolean {
			return (hasField$0 & 0x40000) != 0;
		}

		public function set reliveProtect(value:Boolean):void {
			hasField$0 |= 0x40000;
			reliveProtect$field = value;
		}

		public function get reliveProtect():Boolean {
			return reliveProtect$field;
		}

		/**
		 *  @private
		 */
		public static const RECOMMENDLEVEL:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Pmap.recommendLevel", "recommendLevel", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		private var recommendLevel$field:int;

		public function clearRecommendLevel():void {
			hasField$0 &= 0xfff7ffff;
			recommendLevel$field = new int();
		}

		public function get hasRecommendLevel():Boolean {
			return (hasField$0 & 0x80000) != 0;
		}

		public function set recommendLevel(value:int):void {
			hasField$0 |= 0x80000;
			recommendLevel$field = value;
		}

		public function get recommendLevel():int {
			return recommendLevel$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGuajiProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, guajiProtect$field);
			}
			if (hasEnterMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 22);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, enterMax$field);
			}
			if (hasRide) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, ride$field);
			}
			if (hasResetMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 23);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, resetMax$field);
			}
			if (hasChangePkMode) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, changePkMode$field);
			}
			if (hasKillLegal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, killLegal$field);
			}
			if (hasHideTask) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, hideTask$field);
			}
			if (hasReliveSec) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reliveSec$field);
			}
			if (hasLineMine) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, lineMine$field);
			}
			if (hasLineMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, lineMax$field);
			}
			if (hasReliveMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reliveMap$field);
			}
			if (hasId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, id$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, type$field);
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
			if (hasRelivePanel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, relivePanel$field);
			}
			if (hasJump) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, jump$field);
			}
			if (hasKidProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, kidProtect$field);
			}
			if (hasLevelProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, levelProtect$field);
			}
			if (hasRelivePosition) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 20);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, relivePosition$field);
			}
			if (hasReliveProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, reliveProtect$field);
			}
			if (hasRecommendLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
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
			var guajiProtect$count:uint = 0;
			var enterMax$count:uint = 0;
			var ride$count:uint = 0;
			var resetMax$count:uint = 0;
			var changePkMode$count:uint = 0;
			var killLegal$count:uint = 0;
			var hideTask$count:uint = 0;
			var reliveSec$count:uint = 0;
			var lineMine$count:uint = 0;
			var lineMax$count:uint = 0;
			var reliveMap$count:uint = 0;
			var id$count:uint = 0;
			var type$count:uint = 0;
			var name$count:uint = 0;
			var level$count:uint = 0;
			var res$count:uint = 0;
			var relivePanel$count:uint = 0;
			var jump$count:uint = 0;
			var kidProtect$count:uint = 0;
			var levelProtect$count:uint = 0;
			var relivePosition$count:uint = 0;
			var reliveProtect$count:uint = 0;
			var recommendLevel$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 11:
					if (guajiProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.guajiProtect cannot be set twice.');
					}
					++guajiProtect$count;
					this.guajiProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 22:
					if (enterMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.enterMax cannot be set twice.');
					}
					++enterMax$count;
					this.enterMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 12:
					if (ride$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.ride cannot be set twice.');
					}
					++ride$count;
					this.ride = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 23:
					if (resetMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.resetMax cannot be set twice.');
					}
					++resetMax$count;
					this.resetMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 13:
					if (changePkMode$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.changePkMode cannot be set twice.');
					}
					++changePkMode$count;
					this.changePkMode = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 14:
					if (killLegal$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.killLegal cannot be set twice.');
					}
					++killLegal$count;
					this.killLegal = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 15:
					if (hideTask$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.hideTask cannot be set twice.');
					}
					++hideTask$count;
					this.hideTask = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 16:
					if (reliveSec$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.reliveSec cannot be set twice.');
					}
					++reliveSec$count;
					this.reliveSec = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 17:
					if (lineMine$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.lineMine cannot be set twice.');
					}
					++lineMine$count;
					this.lineMine = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 18:
					if (lineMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.lineMax cannot be set twice.');
					}
					++lineMax$count;
					this.lineMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 19:
					if (reliveMap$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.reliveMap cannot be set twice.');
					}
					++reliveMap$count;
					this.reliveMap = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 4:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 5:
					if (res$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.res cannot be set twice.');
					}
					++res$count;
					this.res = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 6:
					if (relivePanel$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.relivePanel cannot be set twice.');
					}
					++relivePanel$count;
					this.relivePanel = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 7:
					if (jump$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.jump cannot be set twice.');
					}
					++jump$count;
					this.jump = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 8:
					if (kidProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.kidProtect cannot be set twice.');
					}
					++kidProtect$count;
					this.kidProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 9:
					if (levelProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.levelProtect cannot be set twice.');
					}
					++levelProtect$count;
					this.levelProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 20:
					if (relivePosition$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.relivePosition cannot be set twice.');
					}
					++relivePosition$count;
					this.relivePosition = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 10:
					if (reliveProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.reliveProtect cannot be set twice.');
					}
					++reliveProtect$count;
					this.reliveProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 21:
					if (recommendLevel$count != 0) {
						throw new flash.errors.IOError('Bad data format: Pmap.recommendLevel cannot be set twice.');
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
