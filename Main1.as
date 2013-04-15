package
{
	/**
	 * @author  Lee
	 * @e-Mail  seemefly1982@gmail.com
	 * @ver v1.0
	 * @created Apr 13, 2013 11:06:22 AM
	 *
	 */
	import com.greensock.TweenLite;
	import com.greensock.TweenMax;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	
	public class Main1 extends MovieClip
	{
		public var tip1:MovieClip;
		public var btn1:SimpleButton;
		public var redMc1:MovieClip;
		public var tf1:TextField;
		public var tf2:TextField;
		public var tf3:TextField;
		public var tf4:TextField;
		public var tf5:TextField;
		public var tf6:TextField;
		public var tf7:TextField;
		public var tf8:TextField;
		public var tf9:TextField;
		public var tf10:TextField;
		public var checkMc:MovieClip;
		public var btnCheck:SimpleButton;
		public var tip2:MovieClip;
		public var preBtn:SimpleButton;
		public var passBtn:SimpleButton;
		public var rmbBtn:SimpleButton;
		public var passMc:MovieClip;
		public var tip3:MovieClip;
		
		public var yzmMask:Sprite;
		public var yzm:Sprite;
		
		private var _isCheck:Boolean;
		private var _b1:Boolean;
		private var _b2:Boolean;
		private var _b3:Boolean;
		private var _b4:Boolean;
		private var _b5:Boolean;
		private var _b6:Boolean;
		private var _b7:Boolean;
		private var _bPass:Boolean;
		private var pos:Array = [{x:421, y:58},//tf1
								{x:421, y:99},//tf2
								{x:421, y:142},//tf3
								{x:400, y:193},//tf4
								{x:421, y:267},//tf5
								{x:421, y:333},//tf6
								{x:421, y:440},//tf7
								{x:421, y:35},//tf8
								{x:421, y:310},//tf9
								{x:421, y:417},//tf10
								{x:340, y:169},//rmb
								{x:421, y:374},//pass
								{x:480, y:486},//check
		];
		
		
		public function Main1()
		{
			addFrameScript(0, frame1, 1, frame2);
		}
		
		private function frame1():void{
			stop();
			fadeIn();
			tip1.alpha = 0;
			tip1.x = 100;
			tip1.y = 200;
			TweenLite.to(tip1, 1.5, {alpha:1, x:434,y:85});
			if(redMc1)
				redMc1.visible = true;
			btn1.addEventListener(MouseEvent.MOUSE_OVER, btn1OverHandler);
			btn1.addEventListener(MouseEvent.MOUSE_OUT, btn1OutHandler);
			btn1.addEventListener(MouseEvent.CLICK, btn1ClickHandler);
		}
		
		private function frame2():void{
			stop();
			fadeIn();
			tip3.alpha = 0;
			tip3.stop();
			
			preBtn.alpha = 0;
			preBtn.y = 0;
			TweenLite.to(preBtn, 1.5, {alpha:1, y:220});
			preBtn.addEventListener(MouseEvent.CLICK, preBtnClickHandler);
			
			tip2.visible = false;
			tip2.stop();
			_isCheck = false;
			checkMc.visible = _isCheck;
			if(redMc1)
				redMc1.visible = true;
			
			yzmMask.visible = false;
			yzm.visible = false;
			
			_bPass = false;
			passMc.visible = false;
			
			tf1.text = "";
			tf2.text = "";
			tf3.text = "";
			tf4.text = "";
			tf5.text = "";
			tf6.text = "";
			tf7.text = "";
			tf8.text = "";
			tf9.text = "";
			tf10.text = "";
			
			tf2.displayAsPassword = true;
			tf3.displayAsPassword = true;
			
			_b1 = false;
			_b2 = false;
			_b3 = false;
			_b4 = false;
			_b5 = false;
			_b6 = false;
			_b7 = false;
			_bPass = false;
			
			tf1.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf2.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf3.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf4.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf5.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf6.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf7.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf8.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf9.addEventListener(MouseEvent.CLICK, tfClickHandler);
			tf10.addEventListener(MouseEvent.CLICK, tfClickHandler);
			rmbBtn.addEventListener(MouseEvent.CLICK, rmbBtnClickHandler);
			
			btnCheck.addEventListener(MouseEvent.CLICK, checkClickHandler);
			passBtn.addEventListener(MouseEvent.CLICK, passClickHandler);
			btn1.addEventListener(MouseEvent.CLICK, btn1ClickHandler2);
		}
		
		private function fadeIn():void{
			this.alpha = 0;
			TweenMax.to(this, 0.5, {alpha:1});
		}
		
		private function moveTip3(i:int):void{
			tip3.gotoAndStop(i);
			TweenLite.to(tip3, 0.7, {x:pos[i-1].x, y:pos[i-1].y});
		}
		
		private function passClickHandler(e:MouseEvent):void{
			_bPass = true;
			passMc.visible = true;
			tip3.alpha = 1;
			moveTip3(12);
		}
		
		private function checkClickHandler(e:MouseEvent):void{
			tip2.visible = true;
			_isCheck = !_isCheck;
			checkMc.visible = _isCheck;
			tip2.gotoAndStop(2);
			moveTip3(13);
		}
		
		private function rmbBtnClickHandler(e:MouseEvent):void{
			tip3.alpha = 1;
			moveTip3(11);
		}
		
		private function tfClickHandler(e:MouseEvent):void{
			tip2.visible = false;
			tip3.alpha = 1;
			switch(e.currentTarget)
			{
				case tf1:
				{
					tf1.text = "jacky";
					_b1 = true;
					moveTip3(1);
					break;
				}
				case tf2:
				{
					tf2.text = "123456";
					_b2 = true;
					moveTip3(2);
					break;
				}
				case tf3:
				{
					tf3.text = "123456";
					_b3 = true;
					moveTip3(3);
					break;
				}
				case tf4:
				{
					yzmMask.visible = true;
					yzm.visible = true;
					tf4.text = "9572";
					_b4 = true;
					moveTip3(4);
					break;
				}
				case tf5:
				{
					tf5.text = "张三";
					_b5 = true;
					moveTip3(5);
					break;
				}
				case tf6:
				{
					tf6.text = "13400596042";
					_b6 = true;
					moveTip3(6);
					break;
				}
				case tf7:
				{
					tf7.text = "1234@qq.com";
					_b7 = true;
					moveTip3(7);
					break;
				}
				case tf8:
				{
					tf8.text = "Lucy";
					moveTip3(8);
					break;
				}
				case tf9:
				{
					tf9.text = "中国";
					moveTip3(9);
					break;
				}
				case tf10:
				{
					tf10.text = "4356278";
					moveTip3(10);
					break;
				}
					
				default:
				{
					break;
				}
			}
		}
		
		private function btn1OverHandler(e:MouseEvent):void{
			if(redMc1){
				redMc1.visible = false;
			}
		}
		
		private function btn1OutHandler(e:MouseEvent):void{
			if(redMc1){
				redMc1.visible = true;
			}
		}
		
		private function btn1ClickHandler(e:MouseEvent):void{
			nextFrame();
		}
		private function preBtnClickHandler(e:MouseEvent):void{
			prevFrame();
		}
		
		private function btn1ClickHandler2(e:MouseEvent):void{
			
			if(_b1&&_b2&&_b3&&_b4&&_b5&&_b6&&_b7&&_bPass&&_isCheck){
				//
			}else{
				tip2.visible = true;
				tip2.gotoAndStop(1);
			}
		}
		
	}
}