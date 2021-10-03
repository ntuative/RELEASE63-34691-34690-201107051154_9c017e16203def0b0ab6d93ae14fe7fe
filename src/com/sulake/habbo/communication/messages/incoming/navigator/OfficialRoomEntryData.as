package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1381:int = 1;
      
      public static const const_770:int = 2;
      
      public static const const_874:int = 3;
      
      public static const const_1789:int = 4;
       
      
      private var _index:int;
      
      private var var_2958:String;
      
      private var var_2959:String;
      
      private var var_2960:Boolean;
      
      private var var_2961:String;
      
      private var var_959:String;
      
      private var var_2957:int;
      
      private var var_2360:int;
      
      private var _type:int;
      
      private var var_2610:String;
      
      private var var_1106:GuestRoomData;
      
      private var var_1107:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2958 = param1.readString();
         this.var_2959 = param1.readString();
         this.var_2960 = param1.readInteger() == 1;
         this.var_2961 = param1.readString();
         this.var_959 = param1.readString();
         this.var_2957 = param1.readInteger();
         this.var_2360 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1381)
         {
            this.var_2610 = param1.readString();
         }
         else if(this._type == const_874)
         {
            this.var_1107 = new PublicRoomData(param1);
         }
         else if(this._type == const_770)
         {
            this.var_1106 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1106 != null)
         {
            this.var_1106.dispose();
            this.var_1106 = null;
         }
         if(this.var_1107 != null)
         {
            this.var_1107.dispose();
            this.var_1107 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2958;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2959;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2960;
      }
      
      public function get picText() : String
      {
         return this.var_2961;
      }
      
      public function get picRef() : String
      {
         return this.var_959;
      }
      
      public function get folderId() : int
      {
         return this.var_2957;
      }
      
      public function get tag() : String
      {
         return this.var_2610;
      }
      
      public function get userCount() : int
      {
         return this.var_2360;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1106;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1107;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1381)
         {
            return 0;
         }
         if(this.type == const_770)
         {
            return this.var_1106.maxUserCount;
         }
         if(this.type == const_874)
         {
            return this.var_1107.maxUsers;
         }
         return 0;
      }
   }
}
