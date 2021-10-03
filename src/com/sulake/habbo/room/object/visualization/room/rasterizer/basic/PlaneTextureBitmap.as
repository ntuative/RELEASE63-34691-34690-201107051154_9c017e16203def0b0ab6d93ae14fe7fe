package com.sulake.habbo.room.object.visualization.room.rasterizer.basic
{
   import flash.display.BitmapData;
   
   public class PlaneTextureBitmap
   {
      
      public static const const_59:Number = -1;
      
      public static const MAX_NORMAL_COORDINATE_VALUE:Number = 1;
       
      
      private var _bitmap:BitmapData = null;
      
      private var var_2950:Number = -1.0;
      
      private var _normalMaxX:Number = 1.0;
      
      private var var_2951:Number = -1.0;
      
      private var var_2952:Number = 1.0;
      
      public function PlaneTextureBitmap(param1:BitmapData, param2:Number = -1.0, param3:Number = 1.0, param4:Number = -1.0, param5:Number = 1.0)
      {
         super();
         this.var_2950 = param2;
         this._normalMaxX = param3;
         this.var_2951 = param4;
         this.var_2952 = param5;
         this._bitmap = param1;
      }
      
      public function get bitmap() : BitmapData
      {
         return this._bitmap;
      }
      
      public function get normalMinX() : Number
      {
         return this.var_2950;
      }
      
      public function get normalMaxX() : Number
      {
         return this._normalMaxX;
      }
      
      public function get normalMinY() : Number
      {
         return this.var_2951;
      }
      
      public function get normalMaxY() : Number
      {
         return this.var_2952;
      }
      
      public function dispose() : void
      {
         this._bitmap = null;
      }
   }
}