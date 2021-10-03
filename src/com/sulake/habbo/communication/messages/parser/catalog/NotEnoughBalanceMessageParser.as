package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1764:int = 0;
      
      private var var_1765:int = 0;
      
      private var var_1895:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1764;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1765;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1895;
      }
      
      public function flush() : Boolean
      {
         this.var_1764 = 0;
         this.var_1765 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1764 = param1.readInteger();
         this.var_1765 = param1.readInteger();
         this.var_1895 = param1.readInteger();
         return true;
      }
   }
}
