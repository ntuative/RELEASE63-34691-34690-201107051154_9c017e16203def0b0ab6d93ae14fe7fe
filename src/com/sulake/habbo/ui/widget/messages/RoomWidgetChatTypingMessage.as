package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_885:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_668:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_885);
         this.var_668 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_668;
      }
   }
}
