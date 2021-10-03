package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1822:int;
      
      private var var_2440:int;
      
      private var var_1668:int;
      
      private var var_2441:int;
      
      private var var_129:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1822 = param1.readInteger();
         this.var_2440 = param1.readInteger();
         this.var_1668 = param1.readInteger();
         this.var_2441 = param1.readInteger();
         this.var_129 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1822);
      }
      
      public function get callId() : int
      {
         return this.var_1822;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2440;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1668;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2441;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_129;
      }
   }
}
