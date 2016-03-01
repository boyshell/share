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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Category extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HIDETASK:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.hideTask", "hideTask", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hideTask$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearHideTask():void {
			hasField$0 &= 0xfffffffe;
			hideTask$field = new Boolean();
		}

		public function get hasHideTask():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hideTask(value:Boolean):void {
			hasField$0 |= 0x1;
			hideTask$field = value;
		}

		public function get hideTask():Boolean {
			return hideTask$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVESEC:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.map.Category.reliveSec", "reliveSec", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reliveSec$field:int;

		public function clearReliveSec():void {
			hasField$0 &= 0xfffffffd;
			reliveSec$field = new int();
		}

		public function get hasReliveSec():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set reliveSec(value:int):void {
			hasField$0 |= 0x2;
			reliveSec$field = value;
		}

		public function get reliveSec():int {
			return reliveSec$field;
		}

		/**
		 *  @private
		 */
		public static const ENTER:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.enter", "enter", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var enter$field:Boolean;

		public function clearEnter():void {
			hasField$0 &= 0xfffffffb;
			enter$field = new Boolean();
		}

		public function get hasEnter():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set enter(value:Boolean):void {
			hasField$0 |= 0x4;
			enter$field = value;
		}

		public function get enter():Boolean {
			return enter$field;
		}

		/**
		 *  @private
		 */
		public static const RESET:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.reset", "reset", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reset$field:Boolean;

		public function clearReset():void {
			hasField$0 &= 0xfffffff7;
			reset$field = new Boolean();
		}

		public function get hasReset():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set reset(value:Boolean):void {
			hasField$0 |= 0x8;
			reset$field = value;
		}

		public function get reset():Boolean {
			return reset$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor_TYPE_ENUM = new FieldDescriptor_TYPE_ENUM("org.shell.game.config.proto.map.Category.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, org.shell.game.config.proto.map.Type);

		private var type$field:int;

		public function clearType():void {
			hasField$0 &= 0xffffffef;
			type$field = new int();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set type(value:int):void {
			hasField$0 |= 0x10;
			type$field = value;
		}

		public function get type():int {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEPANEL:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.relivePanel", "relivePanel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var relivePanel$field:Boolean;

		public function clearRelivePanel():void {
			hasField$0 &= 0xffffffdf;
			relivePanel$field = new Boolean();
		}

		public function get hasRelivePanel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set relivePanel(value:Boolean):void {
			hasField$0 |= 0x20;
			relivePanel$field = value;
		}

		public function get relivePanel():Boolean {
			return relivePanel$field;
		}

		/**
		 *  @private
		 */
		public static const JUMP:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.jump", "jump", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var jump$field:Boolean;

		public function clearJump():void {
			hasField$0 &= 0xffffffbf;
			jump$field = new Boolean();
		}

		public function get hasJump():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set jump(value:Boolean):void {
			hasField$0 |= 0x40;
			jump$field = value;
		}

		public function get jump():Boolean {
			return jump$field;
		}

		/**
		 *  @private
		 */
		public static const KIDPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.kidProtect", "kidProtect", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var kidProtect$field:Boolean;

		public function clearKidProtect():void {
			hasField$0 &= 0xffffff7f;
			kidProtect$field = new Boolean();
		}

		public function get hasKidProtect():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set kidProtect(value:Boolean):void {
			hasField$0 |= 0x80;
			kidProtect$field = value;
		}

		public function get kidProtect():Boolean {
			return kidProtect$field;
		}

		/**
		 *  @private
		 */
		public static const LEVELPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.levelProtect", "levelProtect", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var levelProtect$field:Boolean;

		public function clearLevelProtect():void {
			hasField$0 &= 0xfffffeff;
			levelProtect$field = new Boolean();
		}

		public function get hasLevelProtect():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set levelProtect(value:Boolean):void {
			hasField$0 |= 0x100;
			levelProtect$field = value;
		}

		public function get levelProtect():Boolean {
			return levelProtect$field;
		}

		/**
		 *  @private
		 */
		public static const RELIVEPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.reliveProtect", "reliveProtect", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var reliveProtect$field:Boolean;

		public function clearReliveProtect():void {
			hasField$0 &= 0xfffffdff;
			reliveProtect$field = new Boolean();
		}

		public function get hasReliveProtect():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set reliveProtect(value:Boolean):void {
			hasField$0 |= 0x200;
			reliveProtect$field = value;
		}

		public function get reliveProtect():Boolean {
			return reliveProtect$field;
		}

		/**
		 *  @private
		 */
		public static const GUAJIPROTECT:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.guajiProtect", "guajiProtect", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guajiProtect$field:Boolean;

		public function clearGuajiProtect():void {
			hasField$0 &= 0xfffffbff;
			guajiProtect$field = new Boolean();
		}

		public function get hasGuajiProtect():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set guajiProtect(value:Boolean):void {
			hasField$0 |= 0x400;
			guajiProtect$field = value;
		}

		public function get guajiProtect():Boolean {
			return guajiProtect$field;
		}

		/**
		 *  @private
		 */
		public static const RIDE:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.ride", "ride", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ride$field:Boolean;

		public function clearRide():void {
			hasField$0 &= 0xfffff7ff;
			ride$field = new Boolean();
		}

		public function get hasRide():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set ride(value:Boolean):void {
			hasField$0 |= 0x800;
			ride$field = value;
		}

		public function get ride():Boolean {
			return ride$field;
		}

		/**
		 *  @private
		 */
		public static const CHANGEPKMODE:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.changePkMode", "changePkMode", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var changePkMode$field:Boolean;

		public function clearChangePkMode():void {
			hasField$0 &= 0xffffefff;
			changePkMode$field = new Boolean();
		}

		public function get hasChangePkMode():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set changePkMode(value:Boolean):void {
			hasField$0 |= 0x1000;
			changePkMode$field = value;
		}

		public function get changePkMode():Boolean {
			return changePkMode$field;
		}

		/**
		 *  @private
		 */
		public static const KILLLEGAL:FieldDescriptor_TYPE_BOOL = new FieldDescriptor_TYPE_BOOL("org.shell.game.config.proto.map.Category.killLegal", "killLegal", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var killLegal$field:Boolean;

		public function clearKillLegal():void {
			hasField$0 &= 0xffffdfff;
			killLegal$field = new Boolean();
		}

		public function get hasKillLegal():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set killLegal(value:Boolean):void {
			hasField$0 |= 0x2000;
			killLegal$field = value;
		}

		public function get killLegal():Boolean {
			return killLegal$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHideTask) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, hideTask$field);
			}
			if (hasReliveSec) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, reliveSec$field);
			}
			if (hasEnter) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, enter$field);
			}
			if (hasReset) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, reset$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_ENUM(output, type$field);
			}
			if (hasRelivePanel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, relivePanel$field);
			}
			if (hasJump) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, jump$field);
			}
			if (hasKidProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, kidProtect$field);
			}
			if (hasLevelProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, levelProtect$field);
			}
			if (hasReliveProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, reliveProtect$field);
			}
			if (hasGuajiProtect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, guajiProtect$field);
			}
			if (hasRide) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, ride$field);
			}
			if (hasChangePkMode) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, changePkMode$field);
			}
			if (hasKillLegal) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write_TYPE_BOOL(output, killLegal$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var hideTask$count:uint = 0;
			var reliveSec$count:uint = 0;
			var enter$count:uint = 0;
			var reset$count:uint = 0;
			var type$count:uint = 0;
			var relivePanel$count:uint = 0;
			var jump$count:uint = 0;
			var kidProtect$count:uint = 0;
			var levelProtect$count:uint = 0;
			var reliveProtect$count:uint = 0;
			var guajiProtect$count:uint = 0;
			var ride$count:uint = 0;
			var changePkMode$count:uint = 0;
			var killLegal$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 11:
					if (hideTask$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.hideTask cannot be set twice.');
					}
					++hideTask$count;
					this.hideTask = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 12:
					if (reliveSec$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.reliveSec cannot be set twice.');
					}
					++reliveSec$count;
					this.reliveSec = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 13:
					if (enter$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.enter cannot be set twice.');
					}
					++enter$count;
					this.enter = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 14:
					if (reset$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.reset cannot be set twice.');
					}
					++reset$count;
					this.reset = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read_TYPE_ENUM(input);
					break;
				case 2:
					if (relivePanel$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.relivePanel cannot be set twice.');
					}
					++relivePanel$count;
					this.relivePanel = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 3:
					if (jump$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.jump cannot be set twice.');
					}
					++jump$count;
					this.jump = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 4:
					if (kidProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.kidProtect cannot be set twice.');
					}
					++kidProtect$count;
					this.kidProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 5:
					if (levelProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.levelProtect cannot be set twice.');
					}
					++levelProtect$count;
					this.levelProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 6:
					if (reliveProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.reliveProtect cannot be set twice.');
					}
					++reliveProtect$count;
					this.reliveProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 7:
					if (guajiProtect$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.guajiProtect cannot be set twice.');
					}
					++guajiProtect$count;
					this.guajiProtect = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 8:
					if (ride$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.ride cannot be set twice.');
					}
					++ride$count;
					this.ride = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 9:
					if (changePkMode$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.changePkMode cannot be set twice.');
					}
					++changePkMode$count;
					this.changePkMode = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				case 10:
					if (killLegal$count != 0) {
						throw new flash.errors.IOError('Bad data format: Category.killLegal cannot be set twice.');
					}
					++killLegal$count;
					this.killLegal = com.netease.protobuf.ReadUtils.read_TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
