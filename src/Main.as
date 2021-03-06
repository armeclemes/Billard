package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import Table;
	import Trou;
	import flash.events.MouseEvent;
	import lib.greensock.*; //lib
	import lib.greensock.easing.*;

	
	[SWF(width = "970", height = "600", backgroundColor = "#ffffff",frameRate="25")]
	
	/**
	 * ...
	 * @author Clément Pera
	 */
	public class Main extends Sprite
	{
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}

		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var test:Sprite = new Sprite

			var maTable:Table = new Table;
			var mesTrou:Trou = new Trou;
			var mesBilles:Bille = new Bille;
			var maQueue:Queue = new Queue;
			var collision:Col = new Col;
			
			maQueue.addEventListener(MouseEvent.MOUSE_DOWN, startDragging); 
			maQueue.addEventListener(MouseEvent.MOUSE_UP, stopDragging);
			
			function startDragging(event:MouseEvent):void 
			{ 
				maQueue.startDrag(); 
			} 
			 
			// This function is called when the mouse button is released. 
			function stopDragging(event:MouseEvent):void 
			{ 
				maQueue.stopDrag(); 
			} 

			//function onDoubleClick(e:MouseEvent):void
			//{
				//trace("toto");
			//}
			
			
			addChild(maTable);
			addChild(mesTrou);
			addChild(mesBilles);
			addChild(maQueue);
			addChild(collision);
			
			
			
			
			
			
			
			
			
			
			
			
			/* exemples (DOIT ETRE DANS LE CONSTRUCTEUR SINON MARCHE PAS)
			var v:Visuel = new Visuel;
			trace(v.azeazeza); //variable
			trace(v._dessiner()); //function
			*/
			
			
			
		/*
			//function table():void
			var table:Shape = new Shape();	
			var tableLargeur:Number = 2.34 * Unite.METRE;
			trace("largeur table : " + tableLargeur);
			var tableHauteur:Number = 1.17 * Unite.METRE;
			var tableMillieuY:Number = 50;
			var tableMillieuX:Number = -50;
			var tablemargeFond:Number = 0.08 * Unite.METRE;
			table.graphics.beginFill(0x006029);
			table.graphics.lineStyle(tablemargeFond, 0x0c351e);
			table.graphics.drawRoundRect(tableMillieuX, tableMillieuY, tableLargeur, tableHauteur, 10);
			table.graphics.endFill();
			addChild(table);
			
				
	//Ombre Table
			var ombreT:DropShadowFilter = new DropShadowFilter(); 
			ombreT.color = 0x00000;
			ombreT.distance = 5; 
			ombreT.angle = 50;
			table.filters = new Array(ombreT);

	//ligne1
			var ligne1:Shape = new Shape();
			//var ligne2:Shape = new Shape();
			
			var colorL1:Array = [0xFFFFFF, 0xFFFFFF]
			var alphasL1:Array = [0.15, 0.15]; //Modifier ici  pour TRANSPARENCE. Ici transparance == 15% 
			var ratiosL1:Array = [250, 250];
			var matrixL1:Matrix = new Matrix();
			matrixL1.createGradientBox(200, 200, 0, -100, -100);

			var ligne1X:Number = 218;
			var ligne1Y:Number = tableMillieuY + 17;
			var ligne1Long:Number = 1.09 * Unite.METRE
			//var ligne123Haut:Number = 5
				
			ligne1.graphics.beginGradientFill(GradientType.LINEAR, colorL1, alphasL1, ratiosL1, matrixL1);
			ligne1.graphics.drawRect(ligne1X, ligne1Y, 3, ligne1Long);
			ligne1.graphics.endFill();
			addChild(ligne1);
			
	//circle ligne1
			
			var circleL1:Shape = new Shape();
			var colorCL1:Array = [0xFFFFFF, 0xFFFFFF]
			var alphasCL1:Array = [0.30, 0.30]; //Modifier ici  pour TRANSPARENCE. Ici transparance == 30% 
			var ratiosCL1:Array = [250, 250];
			var matrixCL1:Matrix = new Matrix();
			matrixCL1.createGradientBox(200, 200, 0, -100, -100);
			
			var circleL1x:Number = ligne1X+1.5;
			var circleL1y:Number = stage.stageHeight/2;
			
			circleL1.graphics.beginGradientFill(GradientType.LINEAR, colorL1, alphasCL1, ratiosCL1, matrixCL1);
			circleL1.graphics.drawCircle(circleL1x, circleL1y, 3);
			circleL1.graphics.endFill();
			addChild(circleL1);
			
	//ligne2
			var ligne2:Shape = new Shape();
			//var ligne2:Shape = new Shape();
			
			var colorL2:Array = [0xFFFFFF, 0xFFFFFF]
			var alphasL2:Array = [0.15, 0.15]; //Modifier ici  pour TRANSPARENCE. Ici transparance == 15% 
			var ratiosL2:Array = [250, 250];
			var matrixL2:Matrix = new Matrix();
			matrixL2.createGradientBox(200, 200, 0, -100, -100);
//var tableLargeur:Number = 2.34 * Unite.METRE;
			//var ligne2X:Number = ((tableMillieuX)+15);
			var ligne2X:Number = 436;
			var ligne2Y:Number = tableMillieuY + 17;
			var ligne2Long:Number = 1.09 * Unite.METRE
			//var ligne2Haut:Number = 5
			
			ligne2.graphics.beginGradientFill(GradientType.LINEAR, colorL2, alphasL2, ratiosL2, matrixL2);
			ligne2.graphics.drawRect(ligne2X, ligne2Y, 3, ligne2Long);
			ligne2.graphics.endFill();
			addChild(ligne2);
			
	//circle ligne2
			
			var circleL2:Shape = new Shape();
			var colorCL2:Array = [0xFFFFFF, 0xFFFFFF]
			var alphasCL2:Array = [0.30, 0.30]; //Modifier ici  pour TRANSPARENCE. Ici transparance == 30% 
			var ratiosCL2:Array = [250, 250];
			var matrixCL2:Matrix = new Matrix();
			matrixCL2.createGradientBox(200, 200, 0, -100, -100);
			
			var circleL2x:Number = ligne2X + 1.5;
			var circleL2y:Number = stage.stageHeight/2;
			
			circleL2.graphics.beginGradientFill(GradientType.LINEAR, colorL2, alphasCL2, ratiosCL2, matrixCL2);
			circleL2.graphics.drawCircle(circleL2x, circleL2y, 3);
			circleL2.graphics.endFill();
			addChild(circleL2);
			
		
	//ligne3
			var ligne3:Shape = new Shape();
			//var ligne2:Shape = new Shape();
			
			var colorL3:Array = [0xFFFFFF, 0xFFFFFF]
			var alphasL3:Array = [0.15, 0.15]; //Modifier ici  pour TRANSPARENCE. Ici transparance == 15% 
			var ratiosL3:Array = [250, 250];
			var matrixL3:Matrix = new Matrix();
			matrixL3.createGradientBox(200, 200, 0, -100, -100);

			var ligne3X:Number = 654;
			var ligne3Y:Number = tableMillieuY + 17;
			var ligne3Long:Number = 1.09 * Unite.METRE
			//var ligne2Haut:Number = 5
			
			ligne3.graphics.beginGradientFill(GradientType.LINEAR, colorL3, alphasL3, ratiosL3, matrixL3);
			ligne3.graphics.drawRect(ligne3X, ligne3Y, 3, ligne3Long);
			ligne3.graphics.endFill();
			addChild(ligne3);
			
	//circle ligne3
			
			var circleL3:Shape = new Shape();
			var colorCL3:Array = [0xFFFFFF, 0xFFFFFF]
			var alphasCL3:Array = [0.30, 0.30]; //Modifier ici  pour TRANSPARENCE. Ici transparance == 30% 
			var ratiosCL3:Array = [250, 250];
			var matrixCL3:Matrix = new Matrix();
			matrixCL2.createGradientBox(200, 200, 0, -100, -100);
			
			var circleL3x:Number = ligne3X + 1.5;
			var circleL3y:Number = stage.stageHeight/2;
			
			circleL3.graphics.beginGradientFill(GradientType.LINEAR, colorL3, alphasCL3, ratiosCL3, matrixCL3);
			circleL3.graphics.drawCircle(circleL3x, circleL3y, 3);
			circleL3.graphics.endFill();
			addChild(circleL3);
			
			//var trou:Shape = new Shape();
			//trou.graphics.beginFill(0x00000);
			//trou.graphics.drawCircle(100,100,30);
			//trou.graphics.endFill()
			//addChild(trou);
			
			 
			//trou(200, 200);
	*/
		/*
			var trou1:Shape = new Main.trou();
			addChild(trou1);
			var trou2:Bitmap = new Images.trou();
			addChild(trou2);
			var trou3:Bitmap = new Images.trou();
			addChild(trou3);
			var trou4:Bitmap = new Images.trou();
			addChild(trou4);
			var trou5:Bitmap = new Images.trou();
			addChild(trou5);	
			var trou6:Bitmap = new Images.trou();
			addChild(trou6);
			trou1.x = 100
			trou1.y = 100
		*/
			
	/* ligne de test de longueur	

 			var Ltest:Shape = new Shape();
			//var ligne2:Shape = new Shape();
			
			Ltest.graphics.beginFill(0x00000);
			Ltest.graphics.drawRect(-35, 500, 907,  40); //(-35+907)
			Ltest.graphics.endFill();
			addChild(Ltest);
	*/

		}	
		
	}
	
}