package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_2394:String;
      
      private var var_1797:int;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2394 = param1.readString();
         this.var_1797 = param1.readInteger();
      }
      
      public function get productItemType() : String
      {
         return this.var_2394;
      }
      
      public function get productItemTypeId() : int
      {
         return this.var_1797;
      }
   }
}
