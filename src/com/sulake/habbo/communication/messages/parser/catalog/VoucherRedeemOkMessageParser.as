package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_998:String = "";
      
      private var var_1230:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_1230 = "";
         this.var_998 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1230 = param1.readString();
         this.var_998 = param1.readString();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_998;
      }
      
      public function get productDescription() : String
      {
         return this.var_1230;
      }
   }
}
