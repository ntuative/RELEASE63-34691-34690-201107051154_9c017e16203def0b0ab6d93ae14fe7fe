package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1734:String = "";
      
      private var var_1920:String = "";
      
      private var var_2485:String = "";
      
      private var var_2727:Number = 0;
      
      private var var_2728:Number = 0;
      
      private var var_2568:Number = 0;
      
      private var var_2567:Number = 0;
      
      private var var_2599:Boolean = false;
      
      private var var_2598:Boolean = false;
      
      private var var_2597:Boolean = false;
      
      private var var_2600:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1734 = param2;
         this.var_1920 = param3;
         this.var_2485 = param4;
         this.var_2727 = param5;
         this.var_2728 = param6;
         this.var_2568 = param7;
         this.var_2567 = param8;
         this.var_2599 = param9;
         this.var_2598 = param10;
         this.var_2597 = param11;
         this.var_2600 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1734;
      }
      
      public function get canvasId() : String
      {
         return this.var_1920;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2485;
      }
      
      public function get screenX() : Number
      {
         return this.var_2727;
      }
      
      public function get screenY() : Number
      {
         return this.var_2728;
      }
      
      public function get localX() : Number
      {
         return this.var_2568;
      }
      
      public function get localY() : Number
      {
         return this.var_2567;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2599;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2598;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2597;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2600;
      }
   }
}
