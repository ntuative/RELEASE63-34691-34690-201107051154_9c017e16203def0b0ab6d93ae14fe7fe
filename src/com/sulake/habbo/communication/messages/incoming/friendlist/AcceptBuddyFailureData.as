package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_969:String;
      
      private var var_1842:int;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_969 = param1.readString();
         this.var_1842 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_969;
      }
      
      public function get errorCode() : int
      {
         return this.var_1842;
      }
   }
}
