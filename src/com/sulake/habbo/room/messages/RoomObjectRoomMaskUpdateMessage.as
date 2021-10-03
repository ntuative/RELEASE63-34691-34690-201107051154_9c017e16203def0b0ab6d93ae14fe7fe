package com.sulake.habbo.room.messages
{
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectRoomMaskUpdateMessage extends RoomObjectUpdateMessage
   {
      
      public static const const_630:String = "RORMUM_ADD_MASK";
      
      public static const const_801:String = "RORMUM_ADD_MASK";
      
      public static const const_2001:String = "door";
      
      public static const const_493:String = "window";
      
      public static const const_302:String = "hole";
       
      
      private var _type:String = "";
      
      private var var_2850:String = "";
      
      private var var_2849:String = "";
      
      private var var_2852:Vector3d = null;
      
      private var var_2851:String = "window";
      
      public function RoomObjectRoomMaskUpdateMessage(param1:String, param2:String, param3:String = null, param4:IVector3d = null, param5:String = "window")
      {
         super(null,null);
         this._type = param1;
         this.var_2850 = param2;
         this.var_2849 = param3;
         if(param4 != null)
         {
            this.var_2852 = new Vector3d(param4.x,param4.y,param4.z);
         }
         this.var_2851 = param5;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get maskId() : String
      {
         return this.var_2850;
      }
      
      public function get maskType() : String
      {
         return this.var_2849;
      }
      
      public function get maskLocation() : IVector3d
      {
         return this.var_2852;
      }
      
      public function get maskCategory() : String
      {
         return this.var_2851;
      }
   }
}
