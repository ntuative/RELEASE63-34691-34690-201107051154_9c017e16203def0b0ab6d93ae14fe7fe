package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class ProgressBar implements IDisposable
   {
      
      private static const const_1708:int = 3;
      
      private static const const_1709:int = 10;
       
      
      private var var_48:HabboQuestEngine;
      
      private var _window:IWindowContainer;
      
      private var var_912:int;
      
      private var var_1378:String;
      
      private var var_2999:Boolean;
      
      private var var_1377:int;
      
      private var var_1379:int;
      
      private var var_2998:int;
      
      private var var_2154:int;
      
      private var var_308:int;
      
      private var var_1670:Boolean;
      
      private var var_911:BitmapData;
      
      private var var_736:Array;
      
      private var var_2155:ColorMatrixFilter;
      
      public function ProgressBar(param1:HabboQuestEngine, param2:IWindowContainer, param3:int, param4:String, param5:Boolean, param6:Point)
      {
         this.var_736 = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
         this.var_2155 = new ColorMatrixFilter(this.var_736);
         super();
         this.var_48 = param1;
         this._window = param2;
         this.var_912 = param3;
         this.var_1378 = param4;
         this.var_2999 = param5;
         var _loc7_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc7_ == null)
         {
            _loc7_ = IWindowContainer(this.var_48.getXmlWindow("ProgressBar"));
            this._window.addChild(_loc7_);
            _loc7_.x = param6.x;
            _loc7_.y = param6.y;
            _loc7_.width = this.var_912 + const_1709;
         }
         if(param5)
         {
            new PendingImage(this.var_48,this._window.findChildByName("bar_l"),"ach_progressbar1");
            new PendingImage(this.var_48,this._window.findChildByName("bar_c"),"ach_progressbar2");
            new PendingImage(this.var_48,this._window.findChildByName("bar_r"),"ach_progressbar3");
         }
         new PendingImage(this.var_48,this._window.findChildByName("bar_a_c"),"ach_progressbar4");
         new PendingImage(this.var_48,this._window.findChildByName("bar_a_r"),"ach_progressbar5");
      }
      
      public function refresh(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = param3 != this.var_2998 || param2 != this.var_1379;
         this.var_1379 = param2;
         this.var_1377 = param1;
         this.var_2154 = this.var_308;
         this.var_2998 = param3;
         if(_loc4_)
         {
            this.var_308 = this.getProgressWidth(this.var_1377);
         }
         this.var_1670 = true;
         this.updateView();
      }
      
      public function set visible(param1:Boolean) : void
      {
         var _loc2_:IWindowContainer = IWindowContainer(this._window.findChildByName("progress_bar_cont"));
         if(_loc2_ != null)
         {
            _loc2_.visible = param1;
         }
      }
      
      public function updateView() : void
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(!this.var_1670)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_c"));
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(this._window.findChildByName("bar_a_r"));
         if(_loc1_.bitmap == null || _loc2_.bitmap == null)
         {
            return;
         }
         if(this.var_2999)
         {
            _loc7_ = IBitmapWrapperWindow(this._window.findChildByName("bar_c"));
            _loc8_ = IBitmapWrapperWindow(this._window.findChildByName("bar_r"));
            if(_loc7_.bitmap == null || _loc8_.bitmap == null)
            {
               return;
            }
            _loc7_.width = this.var_912;
            _loc8_.x = this.var_912 + _loc1_.x;
         }
         if(this.var_911 == null)
         {
            this.var_911 = _loc1_.bitmap.clone();
         }
         var _loc3_:int = this.getProgressWidth(this.var_1377);
         if(this.var_308 < _loc3_)
         {
            _loc9_ = Math.min(Math.abs(this.var_308 - _loc3_),Math.abs(this.var_2154 - _loc3_));
            this.var_308 = Math.min(_loc3_,this.var_308 + Math.max(1,Math.round(Math.sqrt(_loc9_))));
         }
         var _loc4_:* = this.var_308 > 0;
         _loc1_.visible = _loc4_;
         _loc2_.visible = _loc4_;
         if(_loc4_)
         {
            _loc1_.width = this.var_911.width;
            if(this.var_308 < _loc3_)
            {
               this.changeProgressColorFilter();
               _loc1_.bitmap.applyFilter(this.var_911,this.var_911.rect,new Point(0,0),this.var_2155);
            }
            else
            {
               _loc1_.bitmap.copyPixels(this.var_911,this.var_911.rect,new Point(0,0),null,null,true);
            }
            _loc1_.width = this.var_308;
            _loc2_.x = this.var_308 + _loc1_.x;
         }
         this.var_1670 = this.var_308 < _loc3_;
         var _loc5_:ITextWindow = ITextWindow(this._window.findChildByName("progress_txt"));
         var _loc6_:int = !!this.var_1670 ? int(Math.round(this.var_308 / this.var_912 * this.var_1379)) : int(this.var_1377);
         this.var_48.localization.registerParameter(this.var_1378,"progress","" + _loc6_);
         this.var_48.localization.registerParameter(this.var_1378,"limit","" + this.var_1379);
         _loc5_.caption = this.var_48.localization.getKey(this.var_1378,this.var_1378);
         _loc5_.x = const_1708 + _loc1_.x + (this.var_912 - _loc5_.width) / 2;
      }
      
      public function dispose() : void
      {
         this.var_48 = null;
         this._window = null;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_48 == null;
      }
      
      private function getProgressWidth(param1:int) : int
      {
         return Math.max(0,Math.round(this.var_912 * param1 / this.var_1379));
      }
      
      private function changeProgressColorFilter() : void
      {
         var _loc1_:int = this.getProgressWidth(this.var_1377);
         var _loc2_:int = _loc1_ - this.var_2154;
         if(_loc2_ == 0)
         {
            return;
         }
         var _loc3_:Number = (_loc1_ - this.var_308) / _loc2_;
         this.var_736[3] = _loc3_;
         this.var_736[8] = _loc3_;
         this.var_736[0] = 1 - _loc3_;
         this.var_736[6] = 1 - _loc3_;
         this.var_736[12] = 1 - _loc3_;
         this.var_2155.matrix = this.var_736;
      }
   }
}
