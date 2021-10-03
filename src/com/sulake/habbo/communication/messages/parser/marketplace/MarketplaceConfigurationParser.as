package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1569:Boolean;
      
      private var var_2784:int;
      
      private var var_2019:int;
      
      private var var_2020:int;
      
      private var var_2785:int;
      
      private var var_2787:int;
      
      private var var_2786:int;
      
      private var var_2389:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1569;
      }
      
      public function get commission() : int
      {
         return this.var_2784;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_2019;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_2020;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2787;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2785;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2786;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2389;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1569 = param1.readBoolean();
         this.var_2784 = param1.readInteger();
         this.var_2019 = param1.readInteger();
         this.var_2020 = param1.readInteger();
         this.var_2787 = param1.readInteger();
         this.var_2785 = param1.readInteger();
         this.var_2786 = param1.readInteger();
         this.var_2389 = param1.readInteger();
         return true;
      }
   }
}
