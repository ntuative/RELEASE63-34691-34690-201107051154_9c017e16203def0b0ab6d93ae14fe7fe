package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_179:Number = 0;
      
      private var var_497:int = 0;
      
      private var var_532:int = 0;
      
      private var var_638:int = 0;
      
      private var _type:int = 0;
      
      private var var_3111:String = "";
      
      private var var_1605:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2702:int = 0;
      
      private var var_2566:Boolean;
      
      private var var_2772:String = null;
      
      private var var_209:Boolean = false;
      
      public function ObjectMessageData(param1:int)
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
      
      public function get sizeX() : int
      {
         return this.var_532;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_532 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_638;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_638 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_209)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_209)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_209)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2772;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_209)
         {
            this.var_2772 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1605;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_1605 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2702;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_209)
         {
            this.var_2702 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2566;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2566 = param1;
      }
   }
}
