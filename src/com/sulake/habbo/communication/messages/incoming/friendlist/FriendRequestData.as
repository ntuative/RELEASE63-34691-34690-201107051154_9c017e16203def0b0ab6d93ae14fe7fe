package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1356:int;
      
      private var var_2316:String;
      
      private var var_2317:int;
      
      private var var_2624:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1356 = param1.readInteger();
         this.var_2316 = param1.readString();
         this.var_2624 = param1.readString();
         this.var_2317 = this.var_1356;
      }
      
      public function get requestId() : int
      {
         return this.var_1356;
      }
      
      public function get requesterName() : String
      {
         return this.var_2316;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2317;
      }
      
      public function get figureString() : String
      {
         return this.var_2624;
      }
   }
}
