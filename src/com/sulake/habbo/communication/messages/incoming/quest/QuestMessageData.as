package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2026:String;
      
      private var var_2024:int;
      
      private var var_2027:int;
      
      private var var_1895:int;
      
      private var _id:int;
      
      private var var_2028:Boolean;
      
      private var _type:String;
      
      private var var_2789:String;
      
      private var var_2792:int;
      
      private var var_2029:String;
      
      private var var_2791:int;
      
      private var var_2790:int;
      
      private var var_1598:int;
      
      private var var_2025:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2025 = new Date();
         super();
         this.var_2026 = param1.readString();
         this.var_2024 = param1.readInteger();
         this.var_2027 = param1.readInteger();
         this.var_1895 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2028 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2789 = param1.readString();
         this.var_2792 = param1.readInteger();
         this.var_2029 = param1.readString();
         this.var_2791 = param1.readInteger();
         this.var_2790 = param1.readInteger();
         this.var_1598 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2026;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2029;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2024;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2027;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1895;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2028;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2789;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2792;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2791;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2790;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1598 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2025.getTime();
         return int(Math.max(0,this.var_1598 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2026;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2029;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2028 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2024 >= this.var_2027;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2025;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1598 = param1;
      }
   }
}
