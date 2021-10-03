package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetChangeMottoMessage extends RoomWidgetMessage
   {
      
      public static const const_769:String = "RWVM_CHANGE_MOTTO_MESSAGE";
       
      
      private var var_1841:String;
      
      public function RoomWidgetChangeMottoMessage(param1:String)
      {
         super(const_769);
         this.var_1841 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1841;
      }
   }
}
