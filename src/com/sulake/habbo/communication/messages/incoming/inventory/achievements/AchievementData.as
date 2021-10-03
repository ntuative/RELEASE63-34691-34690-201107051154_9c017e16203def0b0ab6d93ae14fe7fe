package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1369:int;
      
      private var var_1890:String;
      
      private var var_1968:int;
      
      private var var_2367:int;
      
      private var var_2370:int;
      
      private var var_1967:int;
      
      private var var_1969:Boolean;
      
      private var _category:String;
      
      private var var_2714:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1369 = param1.readInteger();
         this.var_1890 = param1.readString();
         this.var_1968 = Math.max(1,param1.readInteger());
         this.var_2367 = param1.readInteger();
         this.var_2370 = param1.readInteger();
         this.var_1967 = param1.readInteger();
         this.var_1969 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2714 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_1890;
      }
      
      public function get level() : int
      {
         return this.var_1369;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1968;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2367;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_2370;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1967;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_1969;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2714;
      }
      
      public function get firstLevelAchieved() : Boolean
      {
         return this.var_1369 > 1 || this.var_1969;
      }
      
      public function setMaxProgress() : void
      {
         this.var_1967 = this.var_1968;
      }
   }
}
