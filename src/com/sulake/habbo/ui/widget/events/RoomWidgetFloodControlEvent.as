package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetFloodControlEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_853:String = "RWFCE_FLOOD_CONTROL";
       
      
      private var var_2203:int = 0;
      
      public function RoomWidgetFloodControlEvent(param1:int)
      {
         super(const_853,false,false);
         this.var_2203 = param1;
      }
      
      public function get seconds() : int
      {
         return this.var_2203;
      }
   }
}
