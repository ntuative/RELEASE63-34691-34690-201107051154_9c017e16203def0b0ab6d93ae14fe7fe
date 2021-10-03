package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2635:String = "";
      
      private var var_1034:String;
      
      private var var_1659:Boolean;
      
      private var var_2632:Boolean = true;
      
      private var var_2633:int;
      
      private var var_2634:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2633 = parseInt(param1.@pattern);
         this.var_1034 = String(param1.@gender);
         this.var_1659 = Boolean(parseInt(param1.@colorable));
         this.var_2635 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2632 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_1034;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1659;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2632;
      }
      
      public function get patternId() : int
      {
         return this.var_2633;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2634;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2634 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2635;
      }
   }
}
