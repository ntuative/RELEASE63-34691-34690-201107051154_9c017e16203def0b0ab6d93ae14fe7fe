package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2072:int = 0;
      
      private var var_2071:int = 0;
      
      private var var_2853:int = 0;
      
      private var var_2855:Boolean = false;
      
      private var var_2553:Boolean = false;
      
      private var var_2854:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2072 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2071 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2853 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2855 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2553 = param1;
      }
      
      public function set clubIsExpiring(param1:Boolean) : void
      {
         this.var_2854 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2072;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2071;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2853;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2855;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2553;
      }
      
      public function get clubIsExpiring() : Boolean
      {
         return this.var_2854;
      }
   }
}
