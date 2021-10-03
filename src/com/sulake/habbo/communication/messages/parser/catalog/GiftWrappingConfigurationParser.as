package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2490:Boolean;
      
      private var var_2491:int;
      
      private var var_1859:Array;
      
      private var var_879:Array;
      
      private var var_877:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2490;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2491;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1859;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_879;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_877;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1859 = [];
         this.var_879 = [];
         this.var_877 = [];
         this.var_2490 = param1.readBoolean();
         this.var_2491 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1859.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_879.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_877.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
