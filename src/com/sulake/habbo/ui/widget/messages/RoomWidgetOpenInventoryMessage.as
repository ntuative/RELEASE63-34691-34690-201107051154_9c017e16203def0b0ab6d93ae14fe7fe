package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_792:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1760:String = "inventory_effects";
      
      public static const const_1391:String = "inventory_badges";
      
      public static const const_2027:String = "inventory_clothes";
      
      public static const const_1828:String = "inventory_furniture";
       
      
      private var var_3005:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_792);
         this.var_3005 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_3005;
      }
   }
}
