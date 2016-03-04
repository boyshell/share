package org.shell.game.map.message {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.monster.message.MONSTER_MAP;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class S2C_MAP_MONSTER extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MONSTER:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.map.message.S2C_MAP_MONSTER.monster", "monster", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.monster.message.MONSTER_MAP; });

		private var monster$field:org.shell.game.monster.message.MONSTER_MAP;

		public function clearMonster():void {
			monster$field = null;
		}

		public function get hasMonster():Boolean {
			return monster$field != null;
		}

		public function set monster(value:org.shell.game.monster.message.MONSTER_MAP):void {
			monster$field = value;
		}

		public function get monster():org.shell.game.monster.message.MONSTER_MAP {
			return monster$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMonster) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, monster$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var monster$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (monster$count != 0) {
						throw new flash.errors.IOError('Bad data format: S2C_MAP_MONSTER.monster cannot be set twice.');
					}
					++monster$count;
					this.monster = new org.shell.game.monster.message.MONSTER_MAP();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.monster);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
