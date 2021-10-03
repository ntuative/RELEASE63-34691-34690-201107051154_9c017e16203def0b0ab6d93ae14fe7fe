package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2318:int;
      
      private var var_2321:int;
      
      private var var_2320:int;
      
      private var _dayOffsets:Array;
      
      private var var_1750:Array;
      
      private var var_1751:Array;
      
      private var var_2322:int;
      
      private var var_2319:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2318 = param1.readInteger();
         this.var_2321 = param1.readInteger();
         this.var_2320 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1750 = [];
         this.var_1751 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1750.push(param1.readInteger());
            this.var_1751.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2319 = param1.readInteger();
         this.var_2322 = param1.readInteger();
         return true;
      }
   }
}
