package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_115:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_164:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_829:int = 2;
      
      public static const const_776:int = 3;
      
      public static const const_1810:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1841:String = "";
      
      private var var_2349:int;
      
      private var var_2426:int = 0;
      
      private var var_2431:int = 0;
      
      private var _figure:String = "";
      
      private var var_47:BitmapData = null;
      
      private var var_240:Array;
      
      private var var_1679:int = 0;
      
      private var var_2436:String = "";
      
      private var var_2428:int = 0;
      
      private var var_2425:int = 0;
      
      private var var_1815:Boolean = false;
      
      private var var_1839:String = "";
      
      private var var_2270:Boolean = false;
      
      private var var_2435:Boolean = false;
      
      private var var_2433:Boolean = true;
      
      private var var_1298:int = 0;
      
      private var var_2438:Boolean = false;
      
      private var var_2434:Boolean = false;
      
      private var var_2429:Boolean = false;
      
      private var var_2432:Boolean = false;
      
      private var var_2437:Boolean = false;
      
      private var var_2430:Boolean = false;
      
      private var var_2427:int = 0;
      
      private var var_1817:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_240 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1841 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1841;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2349 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2349;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2426 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2426;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2431 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2431;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_47 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_47;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_240 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_240;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1679 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1679;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2436 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2436;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2435 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2435;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1298 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1298;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2438 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2438;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2434 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2434;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2429 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2429;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2432 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2432;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2437 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2437;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2430 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2430;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2427 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2427;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2433 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2433;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1817 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1817;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2428 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2428;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2425 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2425;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1815 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1815;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1839 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1839;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2270 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2270;
      }
   }
}
