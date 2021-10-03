package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_179:Number = 0;
      
      private var var_2930:Number = 0;
      
      private var var_2933:Number = 0;
      
      private var var_2932:Number = 0;
      
      private var var_2931:Number = 0;
      
      private var var_497:int = 0;
      
      private var var_2347:int = 0;
      
      private var var_361:Array;
      
      private var var_2934:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_361 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_178 = param3;
         this.var_179 = param4;
         this.var_2930 = param5;
         this.var_497 = param6;
         this.var_2347 = param7;
         this.var_2933 = param8;
         this.var_2932 = param9;
         this.var_2931 = param10;
         this.var_2934 = param11;
         this.var_361 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_178;
      }
      
      public function get z() : Number
      {
         return this.var_179;
      }
      
      public function get localZ() : Number
      {
         return this.var_2930;
      }
      
      public function get targetX() : Number
      {
         return this.var_2933;
      }
      
      public function get targetY() : Number
      {
         return this.var_2932;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2931;
      }
      
      public function get dir() : int
      {
         return this.var_497;
      }
      
      public function get dirHead() : int
      {
         return this.var_2347;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2934;
      }
      
      public function get actions() : Array
      {
         return this.var_361.slice();
      }
   }
}
