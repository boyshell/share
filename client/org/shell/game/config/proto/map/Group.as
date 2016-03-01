package org.shell.game.config.proto.map {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import org.shell.game.config.proto.map.Common;
	import org.shell.game.config.proto.map.ActivitySample;
	import org.shell.game.config.proto.map.Category;
	import org.shell.game.config.proto.map.CopySingleSample;
	import org.shell.game.config.proto.map.CopyTeamSample;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class Group extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CATEGORY:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.map.Group.Category", "category", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.Category; });

		[ArrayElementType("org.shell.game.config.proto.map.Category")]
		public var category:Array = [];

		/**
		 *  @private
		 */
		public static const COMMON:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.map.Group.Common", "common", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.Common; });

		[ArrayElementType("org.shell.game.config.proto.map.Common")]
		public var common:Array = [];

		/**
		 *  @private
		 */
		public static const COPYSINGLESAMPLE:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.map.Group.CopySingleSample", "copySingleSample", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.CopySingleSample; });

		[ArrayElementType("org.shell.game.config.proto.map.CopySingleSample")]
		public var copySingleSample:Array = [];

		/**
		 *  @private
		 */
		public static const COPYTEAMSAMPLE:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.map.Group.CopyTeamSample", "copyTeamSample", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.CopyTeamSample; });

		[ArrayElementType("org.shell.game.config.proto.map.CopyTeamSample")]
		public var copyTeamSample:Array = [];

		/**
		 *  @private
		 */
		public static const ACTIVITYSAMPLE:RepeatedFieldDescriptor_TYPE_MESSAGE = new RepeatedFieldDescriptor_TYPE_MESSAGE("org.shell.game.config.proto.map.Group.ActivitySample", "activitySample", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return org.shell.game.config.proto.map.ActivitySample; });

		[ArrayElementType("org.shell.game.config.proto.map.ActivitySample")]
		public var activitySample:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var category$index:uint = 0; category$index < this.category.length; ++category$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.category[category$index]);
			}
			for (var common$index:uint = 0; common$index < this.common.length; ++common$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.common[common$index]);
			}
			for (var copySingleSample$index:uint = 0; copySingleSample$index < this.copySingleSample.length; ++copySingleSample$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.copySingleSample[copySingleSample$index]);
			}
			for (var copyTeamSample$index:uint = 0; copyTeamSample$index < this.copyTeamSample.length; ++copyTeamSample$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.copyTeamSample[copyTeamSample$index]);
			}
			for (var activitySample$index:uint = 0; activitySample$index < this.activitySample.length; ++activitySample$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write_TYPE_MESSAGE(output, this.activitySample[activitySample$index]);
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
					this.category.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.map.Category()));
					break;
				case 2:
					this.common.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.map.Common()));
					break;
				case 3:
					this.copySingleSample.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.map.CopySingleSample()));
					break;
				case 4:
					this.copyTeamSample.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.map.CopyTeamSample()));
					break;
				case 5:
					this.activitySample.push(com.netease.protobuf.ReadUtils.read_TYPE_MESSAGE(input, new org.shell.game.config.proto.map.ActivitySample()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
