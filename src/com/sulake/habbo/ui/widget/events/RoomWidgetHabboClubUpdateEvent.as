package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_267:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_3024:int = 0;
      
      private var var_3025:int = 0;
      
      private var var_3026:int = 0;
      
      private var var_3027:Boolean = false;
      
      private var var_2009:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_267,param6,param7);
         this.var_3024 = param1;
         this.var_3025 = param2;
         this.var_3026 = param3;
         this.var_3027 = param4;
         this.var_2009 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_3024;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_3025;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_3026;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_3027;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2009;
      }
   }
}
