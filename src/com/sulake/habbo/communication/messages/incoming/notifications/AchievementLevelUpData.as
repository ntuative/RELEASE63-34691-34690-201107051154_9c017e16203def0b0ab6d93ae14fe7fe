package com.sulake.habbo.communication.messages.incoming.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementLevelUpData
   {
       
      
      private var _type:int;
      
      private var var_1369:int;
      
      private var var_2182:int;
      
      private var var_2367:int;
      
      private var var_2370:int;
      
      private var var_2369:int;
      
      private var var_1890:int;
      
      private var var_2366:String = "";
      
      private var var_2368:String = "";
      
      private var var_2365:int;
      
      private var _category:String;
      
      public function AchievementLevelUpData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1369 = param1.readInteger();
         this.var_1890 = param1.readInteger();
         this.var_2366 = param1.readString();
         this.var_2182 = param1.readInteger();
         this.var_2367 = param1.readInteger();
         this.var_2370 = param1.readInteger();
         this.var_2369 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         this.var_2368 = param1.readString();
         this._category = param1.readString();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1369;
      }
      
      public function get points() : int
      {
         return this.var_2182;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2367;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2370;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_2369;
      }
      
      public function get badgeId() : int
      {
         return this.var_1890;
      }
      
      public function get badgeCode() : String
      {
         return this.var_2366;
      }
      
      public function get removedBadgeCode() : String
      {
         return this.var_2368;
      }
      
      public function get achievementID() : int
      {
         return this.var_2365;
      }
      
      public function get category() : String
      {
         return this._category;
      }
   }
}
