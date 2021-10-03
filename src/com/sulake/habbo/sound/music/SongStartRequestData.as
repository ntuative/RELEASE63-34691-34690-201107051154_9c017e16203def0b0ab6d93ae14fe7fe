package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1819:int;
      
      private var var_1881:Number;
      
      private var var_2523:Number;
      
      private var var_2526:int;
      
      private var var_2524:Number;
      
      private var var_2525:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1819 = param1;
         this.var_1881 = param2;
         this.var_2523 = param3;
         this.var_2524 = param4;
         this.var_2525 = param5;
         this.var_2526 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1819;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1881 < 0)
         {
            return 0;
         }
         return this.var_1881 + (getTimer() - this.var_2526) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2523;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2524;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2525;
      }
   }
}
