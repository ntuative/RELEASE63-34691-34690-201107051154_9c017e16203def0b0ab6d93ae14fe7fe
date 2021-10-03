package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1607:Number = 12;
       
      
      private var var_2888:int = -1;
      
      private var var_2884:int = -2;
      
      private var var_230:Vector3d = null;
      
      private var var_1330:Number = 0;
      
      private var var_1626:Number = 0;
      
      private var var_2082:Boolean = false;
      
      private var var_208:Vector3d = null;
      
      private var var_2080:Vector3d;
      
      private var var_2885:Boolean = false;
      
      private var var_2881:Boolean = false;
      
      private var var_2883:Boolean = false;
      
      private var var_2890:Boolean = false;
      
      private var var_2886:int = 0;
      
      private var var_2889:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2887:int = 0;
      
      private var var_2882:int = 0;
      
      private var var_1870:int = -1;
      
      private var var_2081:int = 0;
      
      private var var_2079:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2080 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_208;
      }
      
      public function get targetId() : int
      {
         return this.var_2888;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2884;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2080;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2885;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2881;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2883;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2890;
      }
      
      public function get screenWd() : int
      {
         return this.var_2886;
      }
      
      public function get screenHt() : int
      {
         return this.var_2889;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2887;
      }
      
      public function get roomHt() : int
      {
         return this.var_2882;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1870;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_230 != null && this.var_208 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2888 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2080.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2884 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2885 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2881 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2883 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2890 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2886 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2889 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2079 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2887 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2882 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1870 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_230 == null)
         {
            this.var_230 = new Vector3d();
         }
         if(this.var_230.x != param1.x || this.var_230.y != param1.y || this.var_230.z != param1.z)
         {
            this.var_230.assign(param1);
            this.var_2081 = 0;
            _loc2_ = Vector3d.dif(this.var_230,this.var_208);
            this.var_1330 = _loc2_.length;
            this.var_2082 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_230 = null;
         this.var_208 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_208 != null)
         {
            return;
         }
         this.var_208 = new Vector3d();
         this.var_208.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_208 == null)
         {
            this.var_208 = new Vector3d();
         }
         this.var_208.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_230 != null && this.var_208 != null)
         {
            ++this.var_2081;
            if(this.var_2079)
            {
               this.var_2079 = false;
               this.var_208 = this.var_230;
               this.var_230 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_230,this.var_208);
            if(_loc3_.length > this.var_1330)
            {
               this.var_1330 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_208 = this.var_230;
               this.var_230 = null;
               this.var_1626 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1330);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1330 / const_1607;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2082)
               {
                  if(_loc7_ < this.var_1626)
                  {
                     _loc7_ = this.var_1626;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2082 = false;
                  }
               }
               this.var_1626 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_208 = Vector3d.sum(this.var_208,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1870 = -1;
      }
   }
}
