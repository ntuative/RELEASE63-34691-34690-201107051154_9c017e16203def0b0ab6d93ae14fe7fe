package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
       
      
      private var var_1924:int = 0;
      
      private var var_1621:Dictionary;
      
      private var var_2072:int = 0;
      
      private var var_2071:int = 0;
      
      private var var_2553:Boolean = false;
      
      private var var_2550:int = 0;
      
      private var var_2551:int = 0;
      
      private var var_2854:Boolean = false;
      
      public function Purse()
      {
         this.var_1621 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1924;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1924 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2072;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2072 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2071;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2071 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2072 > 0 || this.var_2071 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2553;
      }
      
      public function get isExpiring() : Boolean
      {
         return this.var_2854;
      }
      
      public function set isExpiring(param1:Boolean) : void
      {
         this.var_2854 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2553 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2550;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2550 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2551;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2551 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1621;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1621 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1621[param1];
      }
   }
}
