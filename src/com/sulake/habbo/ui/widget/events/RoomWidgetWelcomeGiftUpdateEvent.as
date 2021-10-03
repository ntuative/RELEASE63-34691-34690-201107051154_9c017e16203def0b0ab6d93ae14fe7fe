package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetWelcomeGiftUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_508:String = "rwwgue_welcome_gift_widget_status";
       
      
      private var var_1628:String;
      
      private var var_1332:Boolean;
      
      private var var_1080:Boolean;
      
      private var _furniId:int;
      
      private var var_2782:Boolean;
      
      public function RoomWidgetWelcomeGiftUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_508,param1,param2);
      }
      
      public function get email() : String
      {
         return this.var_1628;
      }
      
      public function get isVerified() : Boolean
      {
         return this.var_1332;
      }
      
      public function get allowEmailChange() : Boolean
      {
         return this.var_1080;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get requestedByUser() : Boolean
      {
         return this.var_2782;
      }
      
      public function set email(param1:String) : void
      {
         this.var_1628 = param1;
      }
      
      public function set isVerified(param1:Boolean) : void
      {
         this.var_1332 = param1;
      }
      
      public function set allowEmailChange(param1:Boolean) : void
      {
         this.var_1080 = param1;
      }
      
      public function set furniId(param1:int) : void
      {
         this._furniId = param1;
      }
      
      public function set requestedByUser(param1:Boolean) : void
      {
         this.var_2782 = param1;
      }
   }
}
