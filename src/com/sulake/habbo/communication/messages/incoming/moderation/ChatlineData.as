package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2865:int;
      
      private var var_2866:int;
      
      private var var_2863:int;
      
      private var var_2864:String;
      
      private var var_1879:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2865 = param1.readInteger();
         this.var_2866 = param1.readInteger();
         this.var_2863 = param1.readInteger();
         this.var_2864 = param1.readString();
         this.var_1879 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2865;
      }
      
      public function get minute() : int
      {
         return this.var_2866;
      }
      
      public function get chatterId() : int
      {
         return this.var_2863;
      }
      
      public function get chatterName() : String
      {
         return this.var_2864;
      }
      
      public function get msg() : String
      {
         return this.var_1879;
      }
   }
}
