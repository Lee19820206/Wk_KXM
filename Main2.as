package
{
	/**
	 * @author  Lee
	 * @e-Mail  seemefly1982@gmail.com
	 * @ver v1.0
	 * @created Apr 14, 2013 10:16:33 PM
	 *
	 */
	import com.greensock.TweenLite;
	import com.greensock.TweenMax;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class Main2 extends MovieClip
	{
		public var btn1:SimpleButton;
		public var redMc:MovieClip;
		public var tip1:MovieClip;
		public var preBtn:SimpleButton;
		
		public var tf1:TextField;
		public var tf2:TextField;
		public var tf3:TextField;
		public var tf4:TextField;
		
		public function Main2()
		{
			super();
			addFrameScript(0, frame1, 1, frame2, 2, frame3, 3, frame4, 4, frame5, 5, frame6);
		}
		private function fadeIn():void{
			this.alpha = 0;
			TweenMax.to(this, 0.5, {alpha:1});
		}
		
		private function moveTip1($x:Number, $y:Number, $x1:Number = 100, $y1:Number = 200):void{
			tip1.alpha = 0;
			tip1.x = 100;
			tip1.y = 200;
			TweenLite.to(tip1, 1.5, {alpha:1, x:$x,y:$y});
		}
		
		private function movePrebtn($y:Number = 220):void{
			preBtn.alpha = 0;
			preBtn.y = 0;
			TweenLite.to(preBtn, 1.5, {alpha:1, y:$y});
		}
		
		private function frame1():void{
			stop();
			fadeIn();
			tip1.alpha = 0;
			tip1.x = 100;
			tip1.y = 200;
			TweenLite.to(tip1, 1.5, {alpha:1, x:356,y:74});
			
			btn1.addEventListener(MouseEvent.MOUSE_OVER, btn1OverHandler);
			btn1.addEventListener(MouseEvent.MOUSE_OUT, btn1OutHandler);
			btn1.addEventListener(MouseEvent.CLICK, btn1ClickHandler);
		}
		
		private function frame2():void{
			stop();
			fadeIn();
			preBtn.x = -6;
			moveTip1(234, 217);
			movePrebtn();
			preBtn.addEventListener(MouseEvent.CLICK, preBtnClickHandler);
			
		}
		
		private function frame3():void{
			stop();
			fadeIn();
			preBtn.x = 296;
			moveTip1(19, 372);
			movePrebtn(260);
			preBtn.addEventListener(MouseEvent.CLICK, preBtnClickHandler);
			
		}
		
		private function frame4():void{
			stop();
			fadeIn();
			preBtn.x = -6;
			moveTip1(386, 452, 100, 300);
			movePrebtn();
			preBtn.addEventListener(MouseEvent.CLICK, preBtnClickHandler);
		}
		
		private function frame5():void{
			stop();
			fadeIn();
			
			moveTip1(350, 365, 100, 300);
			movePrebtn();
			preBtn.addEventListener(MouseEvent.CLICK, preBtnClickHandler);
			
			tf1.text = "";
			tf2.text = "";
			tf3.text = "";
			tf4.text = "";
			tf1.displayAsPassword = true;
			tf1.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf2.addEventListener(MouseEvent.CLICK, tfClickHandler);
		}
		
		 
		
		private function frame6():void{
			stop();
			fadeIn();
			
			//moveTip1(350, 365, 100, 300);
			movePrebtn();
			preBtn.addEventListener(MouseEvent.CLICK, preBtnClickHandler);
		}
		
		
		
		private function preBtnClickHandler(e:MouseEvent):void{
			prevFrame();
		}
		
		private function btn1OverHandler(e:MouseEvent):void{
			if(redMc){
				redMc.visible = false;
			}
		}
		
		private function btn1OutHandler(e:MouseEvent):void{
			if(redMc){
				redMc.visible = true;
			}
		}
		
		private function btn1ClickHandler(e:MouseEvent):void{
			nextFrame();
		}
		
		private function tfClickHandler(e:MouseEvent):void{
			switch(e.currentTarget)
			{
				case tf1:
				{
					tf1.text = "1234";
					break;
				}
				case tf2:
				{
					tf2.text = "100";
					tf3.text = "0";
					tf4.text = "0";
					break;
				}
					
				default:
				{
					break;
				}
			}
		}
	}
}