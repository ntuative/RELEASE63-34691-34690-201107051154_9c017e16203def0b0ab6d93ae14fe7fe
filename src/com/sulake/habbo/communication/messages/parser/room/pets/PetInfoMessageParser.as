package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1905:int;
      
      private var _name:String;
      
      private var var_1369:int;
      
      private var var_2613:int;
      
      private var var_2577:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2611:int;
      
      private var var_2612:int;
      
      private var var_2614:int;
      
      private var var_2579:int;
      
      private var var_2576:int;
      
      private var _ownerName:String;
      
      private var var_599:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1905;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1369;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2613;
      }
      
      public function get experience() : int
      {
         return this.var_2577;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2611;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2612;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2614;
      }
      
      public function get respect() : int
      {
         return this.var_2579;
      }
      
      public function get ownerId() : int
      {
         return this.var_2576;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_599;
      }
      
      public function flush() : Boolean
      {
         this.var_1905 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1905 = param1.readInteger();
         this._name = param1.readString();
         this.var_1369 = param1.readInteger();
         this.var_2613 = param1.readInteger();
         this.var_2577 = param1.readInteger();
         this.var_2611 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2612 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2614 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2579 = param1.readInteger();
         this.var_2576 = param1.readInteger();
         this.var_599 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
