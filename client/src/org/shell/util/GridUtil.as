package org.shell.util
{
	

	public class GridUtil
	{
		private static const WIDTH:int = 32;
		private static const HEIGHT:int = 32;
		
		public static function grid2pixX(x:int):int
		{
			return x * WIDTH + WIDTH / 2;
		}
		
		public static function grid2pixY(y:int):int
		{
			return y * HEIGHT + HEIGHT / 2;
		}
		
		public static function pix2gridX(x:int):int
		{
			return (x - WIDTH / 2) / WIDTH;
		}
		
		public static function pix2gridY(y:int):int
		{
			return (y - HEIGHT / 2) / HEIGHT;
		}
	}
}