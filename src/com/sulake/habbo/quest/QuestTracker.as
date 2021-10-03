package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   import com.sulake.habbo.communication.messages.outgoing.quest.StartCampaignMessageComposer;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestTracker implements IDisposable
   {
      
      private static const const_319:int = 0;
      
      private static const const_714:int = 1;
      
      private static const const_715:int = 2;
      
      private static const const_1128:int = 3;
      
      private static const const_1126:int = 4;
      
      private static const const_1133:int = 5;
      
      private static const const_1130:int = 6;
      
      private static const const_1131:Array = [-2,-3,-2,0,2,3,2,0,2,1,0,1];
      
      private static const const_1127:Array = [1,1,2,2,3,3,4,4,5,5,6,6,4];
      
      private static const const_1129:int = 6;
      
      private static const const_1599:int = 4;
      
      private static const const_716:int = 2;
      
      private static const const_1132:int = 200;
      
      private static const const_318:Array = ["a","b","c","d"];
      
      private static const const_1125:int = 10000;
      
      private static const const_1598:int = 0;
      
      private static const const_713:int = -1;
      
      private static const const_1596:Point = new Point(10,87);
      
      private static const const_1600:int = 162;
      
      private static const const_1597:Number = 0.01;
      
      private static const const_1603:Number = 100;
      
      private static const const_1602:int = 1000;
      
      private static const const_702:String = "quest_tracker";
      
      private static const const_1601:int = 10;
       
      
      private var var_48:HabboQuestEngine;
      
      private var var_229:QuestMessageData;
      
      private var _window:IWindowContainer;
      
      private var var_577:Timer;
      
      private var var_875:ProgressBar;
      
      private var var_261:int = 0;
      
      private var var_1078:int = 0;
      
      private var var_1618:int = 0;
      
      private var var_1325:int = -1;
      
      private var var_876:int = -1;
      
      private var var_1077:int = -1;
      
      private var var_1326:int;
      
      private var var_1619:int;
      
      private var var_2871:Boolean;
      
      public function QuestTracker(param1:HabboQuestEngine)
      {
         super();
         this.var_48 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_48)
         {
            this.var_48.toolbar.extensionView.detachExtension(const_702);
         }
         this.var_48 = null;
         this.var_229 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
         if(this.var_577)
         {
            this.var_577.stop();
            this.var_577 = null;
         }
         if(this.var_875)
         {
            this.var_875.dispose();
            this.var_875 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_48 == null;
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         if(this._window)
         {
            this.clearPrompt();
            this.var_229 = param1;
            this.var_1078 = 0;
            this.refreshTrackerDetails();
            this.var_1325 = 0;
            this.var_261 = const_1128;
         }
      }
      
      public function onQuestCancelled() : void
      {
         this.var_229 = null;
         if(this._window)
         {
            this.clearPrompt();
            this.var_875.refresh(0,100,-1);
            this.var_261 = const_715;
         }
      }
      
      public function onRoomEnter() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Boolean = Boolean(parseInt(this.var_48.configuration.getKey("new.identity","0")));
         var _loc2_:String = this.getDefaultCampaign();
         if(this.var_577 == null && _loc1_ && _loc2_ != "")
         {
            _loc3_ = int(this.var_48.configuration.getKey("questing.startQuestDelayInSeconds","30"));
            this.var_577 = new Timer(_loc3_ * 1000,1);
            this.var_577.addEventListener(TimerEvent.TIMER,this.onStartQuestTimer);
            this.var_577.start();
            Logger.log("Initialized start quest timer with period: " + _loc3_);
         }
      }
      
      public function onRoomExit() : void
      {
         if(this._window != null && this._window.visible)
         {
            this._window.findChildByName("more_info_txt").visible = false;
            this._window.findChildByName("more_info_region").visible = false;
         }
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         var _loc2_:Boolean = this._window && this._window.visible;
         if(param1.waitPeriodSeconds > 0)
         {
            if(_loc2_)
            {
               this.setWindowVisible(false);
            }
            return;
         }
         this.var_229 = param1;
         this.prepareTrackerWindow();
         this.refreshTrackerDetails();
         this.refreshPromptFrames();
         this.setWindowVisible(true);
         this.hideSuccessFrames();
         if(_loc2_)
         {
            if(this.var_261 == const_715)
            {
               this.var_261 = const_714;
            }
            this.setupPrompt(this.var_876,const_1599,false);
         }
         else
         {
            this._window.x = this.getOutScreenLocationX();
            this.var_261 = const_714;
            this.setupPrompt(const_1598,const_716,false);
         }
      }
      
      private function refreshPromptFrames() : void
      {
         if(!this.var_48.isQuestWithPrompts(this.var_229))
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < const_318.length)
         {
            this.var_48.setupPromptFrameImage(this._window,this.var_229,const_318[_loc1_]);
            _loc1_++;
         }
      }
      
      private function prepareTrackerWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this.var_48.getXmlWindow("QuestTracker"));
         this._window.findChildByName("more_info_region").procedure = this.onMoreInfo;
         new PendingImage(this.var_48,this._window.findChildByName("quest_tracker_bg"),"quest_tracker_with_bar");
         var _loc1_:int = 1;
         while(_loc1_ <= const_1129)
         {
            new PendingImage(this.var_48,this.getSuccessFrame(_loc1_),"checkanim" + _loc1_);
            _loc1_++;
         }
         this.hideSuccessFrames();
         this.var_875 = new ProgressBar(this.var_48,IWindowContainer(this._window.findChildByName("content_cont")),const_1600,"quests.tracker.progress",false,const_1596);
      }
      
      private function hideSuccessFrames() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= const_1129)
         {
            this.getSuccessFrame(_loc1_).visible = false;
            _loc1_++;
         }
      }
      
      private function hidePromptFrames() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < const_318.length)
         {
            this.getPromptFrame(const_318[_loc1_]).visible = false;
            _loc1_++;
         }
      }
      
      private function getSuccessFrame(param1:int) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("success_pic_" + param1));
      }
      
      private function getPromptFrame(param1:String) : IBitmapWrapperWindow
      {
         return IBitmapWrapperWindow(this._window.findChildByName("prompt_pic_" + param1));
      }
      
      private function refreshTrackerDetails() : void
      {
         this.var_48.localization.registerParameter("quests.tracker.caption","quest_name",this.var_48.getQuestName(this.var_229));
         this._window.findChildByName("desc_txt").caption = this.var_48.getQuestDesc(this.var_229);
         this._window.findChildByName("more_info_txt").visible = this.var_48.currentlyInRoom;
         this._window.findChildByName("more_info_region").visible = this.var_48.currentlyInRoom;
         var _loc1_:int = Math.round(100 * this.var_229.completedSteps / this.var_229.totalSteps);
         this.var_875.refresh(_loc1_,100,this.var_229.id);
         this.var_48.setupQuestImage(this._window,this.var_229);
      }
      
      private function onMoreInfo(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            this.var_48.questController.questDetails.showDetails(this.var_229);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._window == null)
         {
            return;
         }
         this.var_875.updateView();
         switch(this.var_261)
         {
            case const_714:
               _loc2_ = this.getDefaultLocationX();
               _loc3_ = this._window.x - _loc2_;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(_loc3_ * param1 * const_1597));
                  this._window.x -= _loc4_;
               }
               else
               {
                  this.var_261 = const_319;
                  this._window.x = _loc2_;
               }
               break;
            case const_715:
               _loc2_ = this.getOutScreenLocationX();
               _loc3_ = this._window.width - this._window.x;
               if(_loc3_ > 0)
               {
                  _loc4_ = Math.max(1,Math.round(param1 * const_1603 / _loc3_));
                  this._window.x += _loc4_;
               }
               else
               {
                  this.var_261 = const_319;
                  this._window.x = _loc2_;
                  this.setWindowVisible(false);
               }
               break;
            case const_1128:
               this.hideSuccessFrames();
               this.getSuccessFrame(const_1127[this.var_1325]).visible = true;
               ++this.var_1325;
               if(this.var_1325 >= const_1127.length)
               {
                  this.var_261 = const_1133;
                  this.var_1618 = const_1602;
               }
               break;
            case const_1130:
               this.setQuestImageVisible(false);
               this.hidePromptFrames();
               this.var_1326 -= param1;
               this.getPromptFrame(const_318[this.var_1077]).visible = true;
               if(this.var_1326 < 0)
               {
                  this.var_1326 = const_1132;
                  ++this.var_1077;
                  if(this.var_1077 >= const_318.length)
                  {
                     this.var_1077 = 0;
                     --this.var_1619;
                     if(this.var_1619 < 1)
                     {
                        this.setupPrompt(const_1125,const_716,true);
                        this.var_261 = const_319;
                     }
                  }
               }
               break;
            case const_1126:
               if(this.var_1078 >= -1)
               {
                  this._window.x = this.getDefaultLocationX();
                  this.var_261 = const_319;
                  this.setupPrompt(const_1125,const_716,false);
               }
               else
               {
                  this._window.x = this.getDefaultLocationX() + const_1131[this.var_1078];
                  ++this.var_1078;
               }
               break;
            case const_1133:
               this.var_1618 -= param1;
               if(this.var_1618 < 0)
               {
                  this.var_261 = const_319;
                  this.setWindowVisible(false);
               }
               break;
            case const_319:
               if(this.var_876 != const_713)
               {
                  this.var_876 -= param1;
                  if(this.var_876 < 0)
                  {
                     this.var_876 = const_713;
                     if(this.var_229 != null && this.var_48.isQuestWithPrompts(this.var_229))
                     {
                        if(this.var_2871)
                        {
                           this.startNudge();
                        }
                        else
                        {
                           this.var_261 = const_1130;
                           this.var_1077 = 0;
                           this.var_1326 = const_1132;
                        }
                     }
                  }
               }
         }
      }
      
      private function getDefaultLocationX() : int
      {
         return 0;
      }
      
      private function getOutScreenLocationX() : int
      {
         return this._window.width + const_1601;
      }
      
      public function isVisible() : Boolean
      {
         return this._window && this._window.visible;
      }
      
      private function onStartQuestTimer(param1:TimerEvent) : void
      {
         if(this.hasBlockingWindow())
         {
            Logger.log("Quest start blocked. Waiting some more");
            this.var_577.reset();
            this.var_577.start();
         }
         else
         {
            this.var_48.questController.questDetails.openForNextQuest = this.var_48.configuration.getKey("questing.showDetailsForNextQuest") == "true";
            this.var_48.send(new StartCampaignMessageComposer(this.getDefaultCampaign(),this.var_48.configuration.getBoolean("questing.useWing",false)));
         }
      }
      
      private function getDefaultCampaign() : String
      {
         var _loc1_:String = this.var_48.configuration.getKey("questing.defaultCampaign");
         return _loc1_ == null ? "" : _loc1_;
      }
      
      private function hasBlockingWindow() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 2)
         {
            _loc2_ = this.var_48.windowManager.getDesktop(_loc1_);
            if(_loc2_ != null && this.hasBlockingWindowInLayer(_loc2_))
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function hasBlockingWindowInLayer(param1:IWindowContainer) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:* = null;
         while(_loc2_ < param1.numChildren)
         {
            _loc3_ = param1.getChildAt(_loc2_);
            if(_loc3_ != null && _loc3_.visible)
            {
               if(_loc3_ as IFrameWindow != null)
               {
                  if(_loc3_.name != "mod_start_panel")
                  {
                     return true;
                  }
               }
               else if(_loc3_.name == "welcome_screen")
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      private function setQuestImageVisible(param1:Boolean) : void
      {
         this._window.findChildByName("quest_pic_bitmap").visible = param1;
      }
      
      private function clearPrompt() : void
      {
         this.setupPrompt(const_713,0,false);
      }
      
      private function setupPrompt(param1:int, param2:int, param3:Boolean) : void
      {
         this.setQuestImageVisible(true);
         this.hidePromptFrames();
         this.var_876 = param1;
         this.var_1619 = param2;
         this.var_2871 = param3;
      }
      
      private function startNudge() : void
      {
         this.var_1078 = 0;
         this.var_261 = const_1126;
      }
      
      private function setWindowVisible(param1:Boolean) : void
      {
         this._window.visible = param1;
         if(!param1)
         {
            this.var_48.toolbar.extensionView.detachExtension(const_702);
         }
         else
         {
            this.var_48.toolbar.extensionView.attachExtension(const_702,this._window);
         }
      }
   }
}
