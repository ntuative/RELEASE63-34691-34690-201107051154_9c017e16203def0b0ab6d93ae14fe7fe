package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1329:int;
      
      private var _furniId:int;
      
      private var var_2408:int;
      
      private var var_2250:String;
      
      private var var_1802:int;
      
      private var var_430:int;
      
      private var var_2407:int = -1;
      
      private var var_2318:int;
      
      private var var_1803:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this.var_1329 = param1;
         this._furniId = param2;
         this.var_2408 = param3;
         this.var_2250 = param4;
         this.var_1802 = param5;
         this.var_430 = param6;
         this.var_2407 = param7;
         this.var_2318 = param8;
         this.var_1803 = param9;
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
      
      public function get status() : int
      {
         return this.var_430;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2407;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2318;
      }
      
      public function get offerCount() : int
      {
         return this.var_1803;
      }
   }
}
