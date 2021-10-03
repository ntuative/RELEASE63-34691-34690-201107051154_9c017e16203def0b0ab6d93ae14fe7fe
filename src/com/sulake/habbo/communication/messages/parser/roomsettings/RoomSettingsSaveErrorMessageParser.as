package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2306:int = 1;
      
      public static const const_2189:int = 2;
      
      public static const const_2296:int = 3;
      
      public static const const_2156:int = 4;
      
      public static const const_2032:int = 5;
      
      public static const const_2211:int = 6;
      
      public static const const_1959:int = 7;
      
      public static const const_1977:int = 8;
      
      public static const const_2299:int = 9;
      
      public static const const_2007:int = 10;
      
      public static const const_1887:int = 11;
      
      public static const const_1940:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1842:int;
      
      private var var_653:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1842 = param1.readInteger();
         this.var_653 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1842;
      }
      
      public function get info() : String
      {
         return this.var_653;
      }
   }
}
