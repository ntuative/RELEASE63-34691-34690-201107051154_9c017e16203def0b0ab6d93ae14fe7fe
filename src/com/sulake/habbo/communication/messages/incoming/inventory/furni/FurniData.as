package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2778:int;
      
      private var var_1517:String;
      
      private var _objId:int;
      
      private var var_2158:int;
      
      private var _category:int;
      
      private var var_2250:String;
      
      private var var_2780:Boolean;
      
      private var var_2781:Boolean;
      
      private var var_2779:Boolean;
      
      private var var_2632:Boolean;
      
      private var var_2702:int;
      
      private var var_1605:int;
      
      private var var_1989:String = "";
      
      private var var_1819:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2778 = param1;
         this.var_1517 = param2;
         this._objId = param3;
         this.var_2158 = param4;
         this._category = param5;
         this.var_2250 = param6;
         this.var_2780 = param7;
         this.var_2781 = param8;
         this.var_2779 = param9;
         this.var_2632 = param10;
         this.var_2702 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1989 = param1;
         this.var_1605 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2778;
      }
      
      public function get itemType() : String
      {
         return this.var_1517;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2158;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2780;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2781;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2779;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2632;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2702;
      }
      
      public function get slotId() : String
      {
         return this.var_1989;
      }
      
      public function get songId() : int
      {
         return this.var_1819;
      }
      
      public function get extra() : int
      {
         return this.var_1605;
      }
   }
}
