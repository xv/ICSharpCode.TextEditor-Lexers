/* 3D rotation
** Creative Commons Attribution-Noncommercial-Share Alike 3.0 Unported License
** http://adobe.com/devnet/actionscript/samples/drawing_5.html
*/

package code
{
    /*****************************************
     * DrawingSample5 :
     * Demonstrates animation in 3D space.
     * -------------------
     * See 5_3Drotation.fla
     ****************************************/
     
    import flash.events.*;
    import flash.display.*;
    
    public class Drawing5 extends MovieClip
    {
        //*************************
        // Properties:
        
        public var rX:Number = 0;    // X (0-30)
        public var rY:Number = 0;    // Y (0-30)
        public var rZ:Number = 0;    // Z (0-30)
        public var speed:Number = 0;// S (0-1)
        
        //*************************
        // Constructor:
        
        public function Drawing5()
        {
            // Reset when clicked
            reset_btn.addEventListener(MouseEvent.CLICK, clickHandler);
            
            // Animate image at the frame rate
            addEventListener(Event.ENTER_FRAME, enterFramehandler);
        }
        
        //*************************
        // Event Handling:
        
        protected function clickHandler(event:MouseEvent):void
        {
            // Reset controls
            sliderX_sl.value = 0;
            sliderY_sl.value = 0;
            sliderZ_sl.value = 0;
            sliderSpeed_sl.value = .3;
            
            // Reset image
            logo_mc.rotationX = 0;
            logo_mc.rotationY = 0;
            logo_mc.rotationZ = 0;
        }
        
        protected function enterFramehandler(event:Event):void
        {
            logo_mc.rotationX += sliderX_sl.value * sliderSpeed_sl.value;
            logo_mc.rotationY += sliderY_sl.value * sliderSpeed_sl.value;
            logo_mc.rotationZ += sliderZ_sl.value * sliderSpeed_sl.value;
        }
    }
}
