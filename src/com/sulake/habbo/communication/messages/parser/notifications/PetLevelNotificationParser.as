package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1905:int;
      
      private var var_2800:String;
      
      private var var_1369:int;
      
      private var var_1225:int;
      
      private var var_1768:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1905 = param1.readInteger();
         this.var_2800 = param1.readString();
         this.var_1369 = param1.readInteger();
         this.var_1225 = param1.readInteger();
         this.var_1768 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1905;
      }
      
      public function get petName() : String
      {
         return this.var_2800;
      }
      
      public function get level() : int
      {
         return this.var_1369;
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
   }
}
