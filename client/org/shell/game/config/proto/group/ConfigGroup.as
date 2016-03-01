package org.shell.game.config.proto.group {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.map.Group;
	import org.shell.game.config.proto.monster.Group;
	import org.shell.game.config.proto.item.Group;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class ConfigGroup extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MAP:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.group.ConfigGroup.map", "map", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.Group; });

		private var map$field:org.shell.game.config.proto.map.Group;

		public function clearMap():void {
			map$field = null;
		}

		public function get hasMap():Boolean {
			return map$field != null;
		}

		public function set map(value:org.shell.game.config.proto.map.Group):void {
			map$field = value;
		}

		public function get map():org.shell.game.config.proto.map.Group {
			return map$field;
		}

		/**
		 *  @private
		 */
		public static const MONSTER:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.group.ConfigGroup.monster", "monster", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.Group; });

		private var monster$field:org.shell.game.config.proto.monster.Group;

		public function clearMonster():void {
			monster$field = null;
		}

		public function get hasMonster():Boolean {
			return monster$field != null;
		}

		public function set monster(value:org.shell.game.config.proto.monster.Group):void {
			monster$field = value;
		}

		public function get monster():org.shell.game.config.proto.monster.Group {
			return monster$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM:FieldDescriptor_TYPE_MESSAGE = new FieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.group.ConfigGroup.item", "item", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.item.Group; });

		private var item$field:org.shell.game.config.proto.item.Group;

		public function clearItem():void {
			item$field = null;
		}

		public function get hasItem():Boolean {
			return item$field != null;
		}

		public function set item(value:org.shell.game.config.proto.item.Group):void {
			item$field = value;
		}

		public function get item():org.shell.game.config.proto.item.Group {
			return item$field;
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMap) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, map$field);
			}
			if (hasMonster) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, monster$field);
			}
			if (hasItem) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, item$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var map$count:uint = 0;
			var monster$count:uint = 0;
			var item$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (map$count != 0) {
						throw new flash.errors.IOError('Bad data format: ConfigGroup.map cannot be set twice.');
					}
					++map$count;
					this.map = new org.shell.game.config.proto.map.Group();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.map);
					break;
				case 2:
					if (monster$count != 0) {
						throw new flash.errors.IOError('Bad data format: ConfigGroup.monster cannot be set twice.');
					}
					++monster$count;
					this.monster = new org.shell.game.config.proto.monster.Group();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.monster);
					break;
				case 3:
					if (item$count != 0) {
						throw new flash.errors.IOError('Bad data format: ConfigGroup.item cannot be set twice.');
					}
					++item$count;
					this.item = new org.shell.game.config.proto.item.Group();
					com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, this.item);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
