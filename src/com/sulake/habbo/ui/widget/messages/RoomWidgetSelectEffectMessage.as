package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_1277:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_1242:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_1213:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_918:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         this.var_918 = param2;
      }
      
      public function get effectType() : int
      {
         return this.var_918;
      }
   }
}
