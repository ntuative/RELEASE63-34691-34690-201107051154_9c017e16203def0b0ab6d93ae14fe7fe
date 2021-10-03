package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2336:int = 0;
      
      protected static const const_676:int = 1;
      
      protected static const const_2047:int = 2;
      
      protected static const const_2046:int = 3;
      
      protected static const const_135:int = 4;
      
      protected static const const_677:int = 8;
      
      protected static const const_257:int = 18;
      
      protected static const const_2048:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_2015:Boolean = false;
      
      protected var var_47:BitmapDataAsset;
      
      protected var var_100:IBitmapWrapperWindow;
      
      private var var_1303:uint;
      
      protected var var_214:Timer;
      
      protected var _frame:int = 0;
      
      private var var_691:Point;
      
      protected var var_938:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1303 = const_676 | const_677;
         this.var_691 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_2015;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_47 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_47;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_100 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_100;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1303 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1303;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_938 = param1;
         if(this.var_938 && this.var_2015)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_2015 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_100 && !this.var_100.disposed)
         {
            if(!this.var_100.bitmap)
            {
               this.var_100.bitmap = new BitmapData(this.var_100.width,this.var_100.height,true,0);
            }
            else
            {
               this.var_100.bitmap.fillRect(this.var_100.bitmap.rect,0);
            }
            if(this.var_47 && !this.var_47.disposed)
            {
               this.var_691.x = this.var_691.y = 0;
               _loc1_ = this.var_47.content as BitmapData;
               switch(this.var_1303 & const_2046)
               {
                  case const_676:
                     this.var_691.x = this.var_100.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_2047:
                     this.var_691.x = this.var_100.bitmap.width - _loc1_.width;
               }
               switch(this.var_1303 & const_2048)
               {
                  case const_677:
                     this.var_691.y = this.var_100.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_257:
                     this.var_691.y = this.var_100.bitmap.height - _loc1_.height;
               }
               this.var_100.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_691);
               this.var_100.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_214)
            {
               this.var_214 = new Timer(param2,0);
               this.var_214.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_214.start();
               this.onTimerEvent(null);
            }
            this.var_214.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_214)
            {
               this.var_214.reset();
               this.var_214.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_214 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
