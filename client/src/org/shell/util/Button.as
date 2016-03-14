package org.shell.util
{
	import flash.display.SimpleButton; 
	import flash.display.Sprite; 
	import flash.display.Shape; 
	import flash.filters.DropShadowFilter; 
	import flash.text.TextField; 
	import flash.text.TextFormat; 
	import flash.text.TextFormatAlign; 
	
	public class Button extends SimpleButton
	{
		private var _text:String; 
		private var _width:Number; 
		private var _height:Number; 
		
		public function Button(text:String,width:Number,height:Number)
		{
			this._text = text; 
			this._width = width; 
			this._height = height; 
			this.upState = CreateUpState(); 
			this.downState = CreateDownState(); 
			this.overState = CreateOverState(); 
			this.hitTestState = upState; 
		}
		
		private function CreateUpState():Sprite 
		{ 
			var sprite:Sprite = new Sprite(); 
			var background:Shape = CreateColoredRectangle(0x33FF66); 
			var text:TextField = CreateTextField(false); 
			sprite.addChild(background); 
			sprite.addChild(text); 
			return sprite; 
		} 
		private function CreateDownState():Sprite 
		{ 
			var sprite:Sprite = new Sprite(); 
			var background:Shape = CreateColoredRectangle(0xCCCCCC); 
			var text:TextField = CreateTextField(true); 
			sprite.addChild(background); 
			sprite.addChild(text); 
			return sprite; 
		} 
		private function CreateOverState():Sprite 
		{ 
			var sprite:Sprite = new Sprite(); 
			var background:Shape = CreateColoredRectangle(0x70FF94); 
			var text:TextField = CreateTextField(false); 
			sprite.addChild(background); 
			sprite.addChild(text); 
			return sprite; 
		} 
		private function CreateColoredRectangle(color:uint):Shape 
		{ 
			var rect:Shape = new Shape(); 
			rect.graphics.lineStyle(1,0x000000); 
			rect.graphics.beginFill(color); 
			rect.graphics.drawRoundRect(0,0,_width,_height,10)//最后那个参数，值越大，越接近椭圆   
			rect.graphics.endFill(); 
			rect.filters = [new DropShadowFilter(2)]//滤镜   
			return rect; 
		} 
		private function CreateTextField(downState:Boolean):TextField 
		{ 
			var textField:TextField = new TextField(); 
			textField.text = _text; 
			textField.width = _width; 
			var format:TextFormat = new TextFormat(); 
			format.align = TextFormatAlign.CENTER; 
			textField.setTextFormat(format); 
			//垂直居中   
			textField.y = (_height - textField.textHeight)/2; 
			textField.y -= 2;//Subtract 2 pixels to adjust for offset   
			if(downState) 
			{ 
				textField.x += 1; 
				textField.y += 1; 
			} 
			return textField; 
		} 
	}
}