package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2651:String;
      
      private var var_2977:String;
      
      private var var_439:BitmapDataAsset;
      
      private var var_1514:Boolean;
      
      private var var_1513:Boolean;
      
      private var var_2976:Boolean;
      
      private var _offsetX:int;
      
      private var var_1185:int;
      
      private var var_232:int;
      
      private var _height:int;
      
      private var var_813:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2651 = param1;
         this.var_2977 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_439 = _loc9_;
            this.var_813 = false;
         }
         else
         {
            this.var_439 = null;
            this.var_813 = true;
         }
         this.var_1514 = param4;
         this.var_1513 = param5;
         this._offsetX = param6;
         this.var_1185 = param7;
         this.var_2976 = param8;
      }
      
      public function dispose() : void
      {
         this.var_439 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_813 && this.var_439 != null)
         {
            _loc1_ = this.var_439.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_232 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_813 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1513;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1514;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_232;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2651;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2977;
      }
      
      public function get asset() : IAsset
      {
         return this.var_439;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2976;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1514)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1513)
         {
            return this.var_1185;
         }
         return -(this.height + this.var_1185);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1185;
      }
   }
}
