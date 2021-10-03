package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_656:int = 0;
      
      public static const const_218:int = 1;
      
      public static const const_139:int = 2;
      
      public static const const_873:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1891:String;
      
      private var var_2308:int;
      
      private var var_1565:int;
      
      private var var_2830:int;
      
      private var var_2848:int;
      
      private var var_932:Array;
      
      private var var_2829:Array;
      
      private var var_2847:int;
      
      private var var_2364:Boolean;
      
      private var var_2833:Boolean;
      
      private var var_2828:Boolean;
      
      private var var_2832:Boolean;
      
      private var var_2831:int;
      
      private var var_2834:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2364;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2364 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2833;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2833 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2828;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2828 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2832;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2832 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2831;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2831 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2834;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2834 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1891;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1891 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2308;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1565;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1565 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2830;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2830 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2848;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2848 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_932;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_932 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2829;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2829 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2847;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2847 = param1;
      }
   }
}
