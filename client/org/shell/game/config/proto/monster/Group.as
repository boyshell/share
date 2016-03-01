package org.shell.game.config.proto.monster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.monster.Category;
	import org.shell.game.config.proto.monster.Boss;
	import org.shell.game.config.proto.monster.Minio;
	import org.shell.game.config.proto.monster.WorldBoss;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Group extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CATEGORY:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Group.Category", "category", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.Category; });

		[ArrayElementType("org.shell.game.config.proto.monster.Category")]
		public var category:Array = [];

		/**
		 *  @private
		 */
		public static const MINIO:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Group.Minio", "minio", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.Minio; });

		[ArrayElementType("org.shell.game.config.proto.monster.Minio")]
		public var minio:Array = [];

		/**
		 *  @private
		 */
		public static const BOSS:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Group.Boss", "boss", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.Boss; });

		[ArrayElementType("org.shell.game.config.proto.monster.Boss")]
		public var boss:Array = [];

		/**
		 *  @private
		 */
		public static const WORLDBOSS:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.monster.Group.WorldBoss", "worldBoss", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.monster.WorldBoss; });

		[ArrayElementType("org.shell.game.config.proto.monster.WorldBoss")]
		public var worldBoss:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var category$index:uint = 0; category$index < this.category.length; ++category$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.category[category$index]);
			}
			for (var minio$index:uint = 0; minio$index < this.minio.length; ++minio$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.minio[minio$index]);
			}
			for (var boss$index:uint = 0; boss$index < this.boss.length; ++boss$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.boss[boss$index]);
			}
			for (var worldBoss$index:uint = 0; worldBoss$index < this.worldBoss.length; ++worldBoss$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.worldBoss[worldBoss$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read_TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.category.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.monster.Category()));
					break;
				case 2:
					this.minio.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.monster.Minio()));
					break;
				case 3:
					this.boss.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.monster.Boss()));
					break;
				case 4:
					this.worldBoss.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.monster.WorldBoss()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
