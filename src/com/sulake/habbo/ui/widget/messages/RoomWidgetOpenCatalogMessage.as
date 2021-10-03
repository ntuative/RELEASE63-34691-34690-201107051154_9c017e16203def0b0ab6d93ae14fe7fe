package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_863:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1284:String = "RWOCM_CLUB_MAIN";
      
      public static const const_2293:String = "RWOCM_PIXELS";
      
      public static const const_2106:String = "RWOCM_CREDITS";
      
      public static const const_2209:String = "RWOCM_SHELLS";
       
      
      private var var_2657:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_863);
         this.var_2657 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2657;
      }
   }
}
