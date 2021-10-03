package com.sulake.habbo.room.object
{
   public class RoomStairData
   {
       
      
      private var var_2299:int;
      
      private var var_1743:Boolean;
      
      private var var_1744:Boolean;
      
      private var var_46:Boolean;
      
      public function RoomStairData(param1:int, param2:Boolean, param3:Boolean, param4:Boolean)
      {
         super();
         this.var_46 = param4;
         this.var_2299 = param1;
         this.var_1743 = param2;
         this.var_1744 = param3;
      }
      
      public function get stairHeight() : int
      {
         return this.var_2299;
      }
      
      public function get neighbourStairMin() : Boolean
      {
         return this.var_1743;
      }
      
      public function get neighbourStairMax() : Boolean
      {
         return this.var_1744;
      }
      
      public function get neighbourStair() : Boolean
      {
         return this.var_1743 || this.var_1744;
      }
      
      public function get border() : Boolean
      {
         return this.var_46;
      }
   }
}
