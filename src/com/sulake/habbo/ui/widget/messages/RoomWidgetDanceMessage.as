package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_833:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1301:int = 0;
      
      public static const const_1963:Array = [2,3,4];
       
      
      private var var_92:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_833);
         this.var_92 = param1;
      }
      
      public function get style() : int
      {
         return this.var_92;
      }
   }
}
