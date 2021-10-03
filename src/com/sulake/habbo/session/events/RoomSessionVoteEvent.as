package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_166:String = "RSPE_VOTE_QUESTION";
      
      public static const const_148:String = "RSPE_VOTE_RESULT";
       
      
      private var var_1311:String = "";
      
      private var var_1536:Array;
      
      private var var_1181:Array;
      
      private var var_1921:int = 0;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         this.var_1536 = [];
         this.var_1181 = [];
         super(param1,param2,param7,param8);
         this.var_1311 = param3;
         this.var_1536 = param4;
         this.var_1181 = param5;
         if(this.var_1181 == null)
         {
            this.var_1181 = [];
         }
         this.var_1921 = param6;
      }
      
      public function get question() : String
      {
         return this.var_1311;
      }
      
      public function get choices() : Array
      {
         return this.var_1536.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1181.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1921;
      }
   }
}
