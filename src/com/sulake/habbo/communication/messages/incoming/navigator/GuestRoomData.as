package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_387:int;
      
      private var var_850:Boolean;
      
      private var var_1103:String;
      
      private var _ownerName:String;
      
      private var var_2308:int;
      
      private var var_2360:int;
      
      private var var_2361:int;
      
      private var var_1891:String;
      
      private var var_2359:int;
      
      private var var_2307:Boolean;
      
      private var var_870:int;
      
      private var var_1565:int;
      
      private var var_2363:String;
      
      private var var_932:Array;
      
      private var var_2358:RoomThumbnailData;
      
      private var var_2364:Boolean;
      
      private var var_2362:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_932 = new Array();
         super();
         this.var_387 = param1.readInteger();
         this.var_850 = param1.readBoolean();
         this.var_1103 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2308 = param1.readInteger();
         this.var_2360 = param1.readInteger();
         this.var_2361 = param1.readInteger();
         this.var_1891 = param1.readString();
         this.var_2359 = param1.readInteger();
         this.var_2307 = param1.readBoolean();
         this.var_870 = param1.readInteger();
         this.var_1565 = param1.readInteger();
         this.var_2363 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_932.push(_loc4_);
            _loc3_++;
         }
         this.var_2358 = new RoomThumbnailData(param1);
         this.var_2364 = param1.readBoolean();
         this.var_2362 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_932 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_387;
      }
      
      public function get event() : Boolean
      {
         return this.var_850;
      }
      
      public function get roomName() : String
      {
         return this.var_1103;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2308;
      }
      
      public function get userCount() : int
      {
         return this.var_2360;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2361;
      }
      
      public function get description() : String
      {
         return this.var_1891;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2359;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2307;
      }
      
      public function get score() : int
      {
         return this.var_870;
      }
      
      public function get categoryId() : int
      {
         return this.var_1565;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2363;
      }
      
      public function get tags() : Array
      {
         return this.var_932;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2358;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2364;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2362;
      }
   }
}
