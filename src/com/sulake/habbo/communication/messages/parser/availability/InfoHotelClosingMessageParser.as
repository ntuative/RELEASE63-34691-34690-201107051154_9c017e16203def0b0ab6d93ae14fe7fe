package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InfoHotelClosingMessageParser implements IMessageParser
   {
       
      
      private var var_1923:int;
      
      public function InfoHotelClosingMessageParser()
      {
         super();
      }
      
      public function get minutesUntilClosing() : int
      {
         return this.var_1923;
      }
      
      public function flush() : Boolean
      {
         this.var_1923 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1923 = param1.readInteger();
         return true;
      }
   }
}
