package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1273:String = "M";
      
      public static const const_1736:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_179:Number = 0;
      
      private var var_497:int = 0;
      
      private var _name:String = "";
      
      private var var_1710:int = 0;
      
      private var var_1074:String = "";
      
      private var _figure:String = "";
      
      private var var_2877:String = "";
      
      private var var_2349:int;
      
      private var var_2426:int = 0;
      
      private var var_2878:String = "";
      
      private var var_2879:int = 0;
      
      private var var_2431:int = 0;
      
      private var var_2907:String = "";
      
      private var var_209:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_209 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_209)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_178;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_209)
         {
            this.var_178 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_179;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_209)
         {
            this.var_179 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_497;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_497 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_209)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1710;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_1710 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1074;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_209)
         {
            this.var_1074 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_209)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2877;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_209)
         {
            this.var_2877 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2349;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_2349 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2426;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_2426 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2878;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_209)
         {
            this.var_2878 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2879;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_2879 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2431;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_2431 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2907;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_209)
         {
            this.var_2907 = param1;
         }
      }
   }
}
