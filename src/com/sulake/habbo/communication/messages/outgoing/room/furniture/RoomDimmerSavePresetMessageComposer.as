package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2474:int;
      
      private var var_2475:int;
      
      private var var_2477:String;
      
      private var var_2478:int;
      
      private var var_2476:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2474 = param1;
         this.var_2475 = param2;
         this.var_2477 = param3;
         this.var_2478 = param4;
         this.var_2476 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2474,this.var_2475,this.var_2477,this.var_2478,int(this.var_2476)];
      }
      
      public function dispose() : void
      {
      }
   }
}
