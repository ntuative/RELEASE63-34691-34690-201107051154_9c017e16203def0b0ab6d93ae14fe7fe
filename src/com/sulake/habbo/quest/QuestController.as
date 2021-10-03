package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_48:HabboQuestEngine;
      
      private var var_553:QuestsList;
      
      private var var_458:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_390:QuestTracker;
      
      private var var_678:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_48 = param1;
         this.var_390 = new QuestTracker(this.var_48);
         this.var_553 = new QuestsList(this.var_48);
         this.var_458 = new QuestDetails(this.var_48);
         this._questCompleted = new QuestCompleted(this.var_48);
         this.var_678 = new NextQuestTimer(this.var_48);
      }
      
      public function onToolbarClick() : void
      {
         this.var_553.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_553.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_390.onQuest(param1);
         this.var_458.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_678.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_390.onQuestCompleted(param1);
         this.var_458.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_390.onQuestCancelled();
         this.var_458.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_678.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_390.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_553.onRoomExit();
         this.var_390.onRoomExit();
         this.var_458.onRoomExit();
         this.var_678.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_390.update(param1);
         this.var_678.update(param1);
         this.var_553.update(param1);
         this.var_458.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_48 = null;
         if(this.var_553)
         {
            this.var_553.dispose();
            this.var_553 = null;
         }
         if(this.var_390)
         {
            this.var_390.dispose();
            this.var_390 = null;
         }
         if(this.var_458)
         {
            this.var_458.dispose();
            this.var_458 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_678)
         {
            this.var_678.dispose();
            this.var_678 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_48 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_553;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_458;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_390;
      }
   }
}
