package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
      
      public static const const_109:int = 1;
      
      public static const const_79:int = 2;
       
      
      private var var_1329:int;
      
      private var _furniId:int;
      
      private var var_2408:int;
      
      private var var_2250:String;
      
      private var var_1802:int;
      
      private var var_2318:int;
      
      private var var_2409:int;
      
      private var var_430:int;
      
      private var var_2407:int = -1;
      
      private var var_1803:int;
      
      private var var_47:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this.var_1329 = param1;
         this._furniId = param2;
         this.var_2408 = param3;
         this.var_2250 = param4;
         this.var_1802 = param5;
         this.var_430 = param6;
         this.var_2318 = param7;
         this.var_1803 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_47)
         {
            this.var_47.dispose();
            this.var_47 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2408;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get price() : int
      {
         return this.var_1802;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2318;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_47 != null)
         {
            this.var_47.dispose();
         }
         this.var_47 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2409 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2409;
      }
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2407;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2407 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1802 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this.var_1329 = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1803;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1803 = param1;
      }
   }
}
