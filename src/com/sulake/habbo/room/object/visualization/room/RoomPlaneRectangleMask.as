package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2346:Number = 0.0;
      
      private var var_2345:Number = 0.0;
      
      private var var_2510:Number = 0.0;
      
      private var var_2511:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2346 = param1;
         this.var_2345 = param2;
         this.var_2510 = param3;
         this.var_2511 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2346;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2345;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2510;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2511;
      }
   }
}
