package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2507:String;
      
      private var var_1865:String;
      
      private var var_2506:String;
      
      private var var_1866:Boolean;
      
      private var var_1867:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2507 = String(param1["set-type"]);
         this.var_1865 = String(param1["flipped-set-type"]);
         this.var_2506 = String(param1["remove-set-type"]);
         this.var_1866 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1867 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1867;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1867 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2507;
      }
      
      public function get flippedSetType() : String
      {
         return this.var_1865;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2506;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1866;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1866 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         this.var_1865 = param1;
      }
   }
}
