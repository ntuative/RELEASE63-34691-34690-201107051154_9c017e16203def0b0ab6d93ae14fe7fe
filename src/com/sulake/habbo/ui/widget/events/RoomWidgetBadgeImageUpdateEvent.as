package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_777:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2538:String;
      
      private var var_2753:BitmapData;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_777,param3,param4);
         this.var_2538 = param1;
         this.var_2753 = param2;
      }
      
      public function get badgeID() : String
      {
         return this.var_2538;
      }
      
      public function get badgeImage() : BitmapData
      {
         return this.var_2753;
      }
   }
}
