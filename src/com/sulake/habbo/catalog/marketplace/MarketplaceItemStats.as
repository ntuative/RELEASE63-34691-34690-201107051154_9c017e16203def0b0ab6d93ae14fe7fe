package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2318:int;
      
      private var var_2321:int;
      
      private var var_2320:int;
      
      private var _dayOffsets:Array;
      
      private var var_1750:Array;
      
      private var var_1751:Array;
      
      private var var_2322:int;
      
      private var var_2319:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2318;
      }
      
      public function get offerCount() : int
      {
         return this.var_2321;
      }
      
      public function get historyLength() : int
      {
         return this.var_2320;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1750;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1751;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2322;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2319;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2318 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2321 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2320 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1750 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1751 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2322 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2319 = param1;
      }
   }
}
