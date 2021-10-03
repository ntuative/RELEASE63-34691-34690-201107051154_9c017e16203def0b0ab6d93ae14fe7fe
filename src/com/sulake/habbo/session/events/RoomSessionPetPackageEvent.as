package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_604:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_520:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_238:int = -1;
      
      private var var_1225:int = -1;
      
      private var var_1768:int = -1;
      
      private var _color:String = "";
      
      private var var_1756:int = 0;
      
      private var var_1757:String = null;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:String, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param2,param9,param10);
         this.var_238 = param3;
         this.var_1225 = param4;
         this.var_1768 = param5;
         this._color = param6;
         this.var_1756 = param7;
         this.var_1757 = param8;
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get petType() : int
      {
         return this.var_1225;
      }
      
      public function get breed() : int
      {
         return this.var_1768;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1756;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1757;
      }
   }
}
