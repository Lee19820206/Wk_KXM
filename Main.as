package
{
	/**
	 * @author  Lee
	 * @e-Mail  seemefly1982@gmail.com
	 * @ver v1.0
	 * @created Apr 15, 2013 12:37:28 AM
	 *
	 */
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	public class Main extends Sprite
	{
		public function Main()
		{
			super();
			if(stage) onStage();
			else addEventListener(Event.ADDED_TO_STAGE, onStage);
		}
		
		private function onStage(e:Event = null):void{
			removeEventListener(Event.ADDED_TO_STAGE, onStage);
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			stage.addEventListener(Event.RESIZE, onResize);
		}
		
		private function onResize(e:Event):void{
			
		}
	}
}