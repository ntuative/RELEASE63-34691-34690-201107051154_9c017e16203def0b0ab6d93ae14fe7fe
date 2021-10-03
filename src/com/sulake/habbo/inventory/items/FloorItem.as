package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2250:String;
      
      protected var var_1605:Number;
      
      protected var var_3042:Boolean;
      
      protected var var_3041:Boolean;
      
      protected var var_2542:Boolean;
      
      protected var var_2845:Boolean;
      
      protected var var_3044:int;
      
      protected var var_2545:int;
      
      protected var var_2543:int;
      
      protected var var_2541:int;
      
      protected var var_1989:String;
      
      protected var var_1819:int;
      
      protected var var_1083:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2542 = param5;
         this.var_3041 = param6;
         this.var_3042 = param7;
         this.var_2845 = param8;
         this.var_2250 = param9;
         this.var_1605 = param10;
         this.var_3044 = param11;
         this.var_2545 = param12;
         this.var_2543 = param13;
         this.var_2541 = param14;
         this.var_1989 = param15;
         this.var_1819 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2250;
      }
      
      public function get extra() : Number
      {
         return this.var_1605;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_3042;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_3041;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2542;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2845;
      }
      
      public function get expires() : int
      {
         return this.var_3044;
      }
      
      public function get creationDay() : int
      {
         return this.var_2545;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2543;
      }
      
      public function get creationYear() : int
      {
         return this.var_2541;
      }
      
      public function get slotId() : String
      {
         return this.var_1989;
      }
      
      public function get songId() : int
      {
         return this.var_1819;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_1083 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_1083;
      }
   }
}
