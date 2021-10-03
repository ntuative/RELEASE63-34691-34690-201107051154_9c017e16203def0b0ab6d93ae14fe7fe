package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPollEvent extends RoomSessionEvent
   {
      
      public static const const_171:String = "RSPE_POLL_OFFER";
      
      public static const const_71:String = "RSPE_POLL_ERROR";
      
      public static const const_140:String = "RSPE_POLL_CONTENT";
       
      
      private var _id:int = -1;
      
      private var var_1955:String;
      
      private var var_1476:int = 0;
      
      private var var_1814:String = "";
      
      private var var_1813:String = "";
      
      private var var_1477:Array = null;
      
      public function RoomSessionPollEvent(param1:String, param2:IRoomSession, param3:int)
      {
         this._id = param3;
         super(param1,param2);
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get summary() : String
      {
         return this.var_1955;
      }
      
      public function set summary(param1:String) : void
      {
         this.var_1955 = param1;
      }
      
      public function get numQuestions() : int
      {
         return this.var_1476;
      }
      
      public function set numQuestions(param1:int) : void
      {
         this.var_1476 = param1;
      }
      
      public function get startMessage() : String
      {
         return this.var_1814;
      }
      
      public function set startMessage(param1:String) : void
      {
         this.var_1814 = param1;
      }
      
      public function get endMessage() : String
      {
         return this.var_1813;
      }
      
      public function set endMessage(param1:String) : void
      {
         this.var_1813 = param1;
      }
      
      public function get questionArray() : Array
      {
         return this.var_1477;
      }
      
      public function set questionArray(param1:Array) : void
      {
         this.var_1477 = param1;
      }
   }
}
