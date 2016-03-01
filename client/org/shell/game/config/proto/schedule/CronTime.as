package org.shell.game.config.proto.schedule {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.schedule.Days;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class CronTime extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CRON:FieldDescriptor_TYPE_STRING = new FieldDescriptor_TYPE_STRING("org.shell.game.config.proto.schedule.CronTime.cron", "cron", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var cron$field:String;

		public function clearCron():void {
			cron$field = null;
		}

		public function get hasCron():Boolean {
			return cron$field != null;
		}

		public function set cron(value:String):void {
			cron$field = value;
		}

		public function get cron():String {
			return cron$field;
		}

		/**
		 *  @private
		 */
		public static const KFMIN:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.schedule.CronTime.kfMin", "kfMin", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var kfMin$field:int;

		private var hasField$0:uint = 0;

		public function clearKfMin():void {
			hasField$0 &= 0xfffffffe;
			kfMin$field = new int();
		}

		public function get hasKfMin():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set kfMin(value:int):void {
			hasField$0 |= 0x1;
			kfMin$field = value;
		}

		public function get kfMin():int {
			return kfMin$field;
		}

		/**
		 *  @private
		 */
		public static const KFMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.schedule.CronTime.kfMax", "kfMax", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var kfMax$field:int;

		public function clearKfMax():void {
			hasField$0 &= 0xfffffffd;
			kfMax$field = new int();
		}

		public function get hasKfMax():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set kfMax(value:int):void {
			hasField$0 |= 0x2;
			kfMax$field = value;
		}

		public function get kfMax():int {
			return kfMax$field;
		}

		/**
		 *  @private
		 */
		public static const KFDAYS:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.schedule.CronTime.kfDays", "kfDays", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.schedule.Days; });

		private var kfDays$field:org.shell.game.config.proto.schedule.Days;

		public function clearKfDays():void {
			kfDays$field = null;
		}

		public function get hasKfDays():Boolean {
			return kfDays$field != null;
		}

		public function set kfDays(value:org.shell.game.config.proto.schedule.Days):void {
			kfDays$field = value;
		}

		public function get kfDays():org.shell.game.config.proto.schedule.Days {
			return kfDays$field;
		}

		/**
		 *  @private
		 */
		public static const HFMIN:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.schedule.CronTime.hfMin", "hfMin", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hfMin$field:int;

		public function clearHfMin():void {
			hasField$0 &= 0xfffffffb;
			hfMin$field = new int();
		}

		public function get hasHfMin():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set hfMin(value:int):void {
			hasField$0 |= 0x4;
			hfMin$field = value;
		}

		public function get hfMin():int {
			return hfMin$field;
		}

		/**
		 *  @private
		 */
		public static const HFMAX:FieldDescriptor_TYPE_INT32 = new FieldDescriptor_TYPE_INT32("org.shell.game.config.proto.schedule.CronTime.hfMax", "hfMax", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hfMax$field:int;

		public function clearHfMax():void {
			hasField$0 &= 0xfffffff7;
			hfMax$field = new int();
		}

		public function get hasHfMax():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set hfMax(value:int):void {
			hasField$0 |= 0x8;
			hfMax$field = value;
		}

		public function get hfMax():int {
			return hfMax$field;
		}

		/**
		 *  @private
		 */
		public static const HFDAYS:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.schedule.CronTime.hfDays", "hfDays", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.schedule.Days; });

		private var hfDays$field:org.shell.game.config.proto.schedule.Days;

		public function clearHfDays():void {
			hfDays$field = null;
		}

		public function get hasHfDays():Boolean {
			return hfDays$field != null;
		}

		public function set hfDays(value:org.shell.game.config.proto.schedule.Days):void {
			hfDays$field = value;
		}

		public function get hfDays():org.shell.game.config.proto.schedule.Days {
			return hfDays$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCron) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_STRING(output, cron$field);
			}
			if (hasKfMin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, kfMin$field);
			}
			if (hasKfMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, kfMax$field);
			}
			if (hasKfDays) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, kfDays$field);
			}
			if (hasHfMin) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, hfMin$field);
			}
			if (hasHfMax) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write_TYPE_INT32(output, hfMax$field);
			}
			if (hasHfDays) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, hfDays$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cron$count:uint = 0;
			var kfMin$count:uint = 0;
			var kfMax$count:uint = 0;
			var kfDays$count:uint = 0;
			var hfMin$count:uint = 0;
			var hfMax$count:uint = 0;
			var hfDays$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cron$count != 0) {
						throw new flash.errors.IOError('Bad data format: CronTime.cron cannot be set twice.');
					}
					++cron$count;
					this.cron = com.netease.protobuf.ReadUtils.read_TYPE_STRING(input);
					break;
				case 2:
					if (kfMin$count != 0) {
						throw new flash.errors.IOError('Bad data format: CronTime.kfMin cannot be set twice.');
					}
					++kfMin$count;
					this.kfMin = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 3:
					if (kfMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: CronTime.kfMax cannot be set twice.');
					}
					++kfMax$count;
					this.kfMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 4:
					if (kfDays$count != 0) {
						throw new flash.errors.IOError('Bad data format: CronTime.kfDays cannot be set twice.');
					}
					++kfDays$count;
					this.kfDays = new org.shell.game.config.proto.schedule.Days();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.kfDays);
					break;
				case 5:
					if (hfMin$count != 0) {
						throw new flash.errors.IOError('Bad data format: CronTime.hfMin cannot be set twice.');
					}
					++hfMin$count;
					this.hfMin = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 6:
					if (hfMax$count != 0) {
						throw new flash.errors.IOError('Bad data format: CronTime.hfMax cannot be set twice.');
					}
					++hfMax$count;
					this.hfMax = com.netease.protobuf.ReadUtils.read_TYPE_INT32(input);
					break;
				case 7:
					if (hfDays$count != 0) {
						throw new flash.errors.IOError('Bad data format: CronTime.hfDays cannot be set twice.');
					}
					++hfDays$count;
					this.hfDays = new org.shell.game.config.proto.schedule.Days();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.hfDays);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
