package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ApproveNameMessageParser implements IMessageParser
   {
       
      
      private var _result:int;
      
      private var var_1757:String;
      
      public function ApproveNameMessageParser()
      {
         super();
      }
      
      public function get result() : int
      {
         return this._result;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1757;
      }
      
      public function flush() : Boolean
      {
         this._result = -1;
         this.var_1757 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._result = param1.readInteger();
         this.var_1757 = param1.readString();
         return true;
      }
   }
}
