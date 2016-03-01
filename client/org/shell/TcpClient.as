package org.shell {
	import com.netease.protobuf.Message;
	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.Socket;
	import flash.utils.ByteArray;
	import flash.utils.getDefinitionByName;
	
	import avmplus.getQualifiedClassName;
	import org.shell.game.ClientHandlerGroupFactory;
	import org.shell.game.ParserGroup;
	import org.shell.game.Handler;

	// TODO 此类仅仅是一个例子，前端可重写
	public class TcpClient {
		private var socket:Socket;
		private var buffer:ByteArray = new ByteArray();
		
		private var handlerGroup:ClientHandlerGroupFactory = new ClientHandlerGroupFactory();
		private var parserGroup:ParserGroup = new ParserGroup();
		
		public function TcpClient(host:String, port:int) {
			this.socket = new Socket();
			this.socket.addEventListener(ProgressEvent.SOCKET_DATA, onRcv);
			this.socket.addEventListener(IOErrorEvent.IO_ERROR, ioError);
			this.socket.addEventListener(Event.CLOSE, close);
			this.socket.addEventListener(Event.CONNECT, connect);
			trace("开始连接:" + host + ":" + port);
			this.socket.connect(host, port);
			trace("连接成功");
		}
		
		protected function connect(event:Event):void
		{
			trace("wocao! connect");
		}
		
		protected function close(event:Event):void
		{
			trace("wocao! close");
		}
		
		protected function ioError(event:IOErrorEvent):void
		{
			trace("wocao! io error");
		}
		
		private function onRcv(e:ProgressEvent):void {
			socket.readBytes(this.buffer, this.buffer.length);
			
			var position:uint = this.buffer.position;
			var flag:int = this.buffer.readInt();
			var len:int = flag >> 1;
			if (len > this.buffer.bytesAvailable) {
				this.buffer.position = position;
				return ;
			}
			
			if ((flag & 1) != 0) {
				var tmpBuffer:ByteArray = new ByteArray();
				this.buffer.readBytes(tmpBuffer, 0, len);
				tmpBuffer.uncompress();
				decode(tmpBuffer.bytesAvailable, tmpBuffer);
			} else {
				decode(len, this.buffer);
			}
			
		}
		
		private function decode(len:int, buffer:ByteArray):void
		{
			while (len > 0) {
				len -= decode0(buffer);
			}
			
			
		}
		
		private function decode0(buffer:ByteArray):int
		{
			var len:int = buffer.readInt();
			var msgId:int = buffer.readShort();
			var msg:Message = createMessage(msgId);
			
			var tmp:ByteArray = new ByteArray();
			buffer.readBytes(tmp, 0, len - 2);
			msg.mergeFrom(tmp);
			
			var handler:Handler = createHandler(msgId);
			handler.message = msg;
			handler.action();
			
			return len + 4;
		}
		
		private function createHandler(msgId:int):Handler {
			return new this.handlerGroup.handlers[msgId]() as Handler;
		}
		
		private function createMessage(msgId:int):Message {
			return new this.parserGroup.id2message[msgId]() as Message;
		}
		
		public function snd(msg:com.netease.protobuf.Message):Boolean {
			var array:Array = new Array;
			array[0] = msg;
			return snd0(array);
		}
		
		private function snd0(array:Array):Boolean {
			if (!this.socket.connected) {
				return false;
			}
			var tmp:ByteArray = new ByteArray();
			for (var i:int = 0; i < array.length; ++i) {
				write(tmp, array[i]);
			}
			
			
			socket.writeBytes(wrap(tmp));
			socket.flush();
			return true;
		}
		
		private function wrap(buf:ByteArray):ByteArray
		{
			var ret:ByteArray = new ByteArray();
			ret.writeInt(buf.length << 1);
			ret.writeBytes(buf);
			return ret;
		}
		
		private function write(writingBuffer:ByteArray, message:Message):void
		{
			var body:ByteArray = new ByteArray();
			var id:int = getMessageId(message);
			body.writeShort(id);
			message.writeTo(body);
			
			writingBuffer.writeInt(body.length);
			writingBuffer.writeBytes(body);
		}
		
		private function getMessageId(message:Message):int {
			return this.parserGroup.message2id[getDefinitionByName(getQualifiedClassName((message)))];
		}
	}
}