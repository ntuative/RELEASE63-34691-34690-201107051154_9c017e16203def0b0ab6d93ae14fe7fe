package com.sulake.habbo.ui.widget.memenu
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.ui.IRoomWidgetHandler;
   import com.sulake.habbo.ui.handler.MeMenuWidgetHandler;
   import com.sulake.habbo.ui.widget.RoomWidgetBase;
   import com.sulake.habbo.ui.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.ui.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.ui.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetMeMenuMessage;
   import com.sulake.habbo.ui.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.utils.WindowToggle;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_194:String = "me_menu_top_view";
      
      public static const const_559:String = "me_menu_my_clothes_view";
      
      public static const const_1237:String = "me_menu_dance_moves_view";
      
      public static const const_902:String = "me_menu_settings_view";
      
      public static const const_820:String = "me_menu_sound_settings";
      
      private static const const_1134:Point = new Point(95,440);
       
      
      private var var_54:IMeMenuView;
      
      private var var_16:IWindowContainer;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1620:int = 0;
      
      private var var_2875:int = 0;
      
      private var var_3086:int = 0;
      
      private var var_2872:Boolean = false;
      
      private var var_2070:int = 0;
      
      private var var_2069:Boolean = false;
      
      private var var_2279:Boolean = false;
      
      private var var_578:Boolean = false;
      
      private var var_2874:Boolean = false;
      
      private var var_2873:int = 0;
      
      private var var_1723:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1724:Boolean;
      
      public function MeMenuWidget(param1:IRoomWidgetHandler, param2:IHabboWindowManager, param3:IAssetLibrary, param4:IHabboLocalizationManager, param5:IEventDispatcher, param6:IHabboConfigurationManager)
      {
         super(param1,param2,param3,param4);
         this._config = param6;
         this._eventDispatcher = param5;
         if(false)
         {
            this.var_2874 = param6.getBoolean("client.news.embed.enabled",false);
         }
         this.var_1724 = this._config.getBoolean("menu.own_avatar.enabled",false);
         (param1 as MeMenuWidgetHandler).widget = this;
         this.changeView(const_194);
         this.hide();
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         this.hide();
         this._eventDispatcher = null;
         if(this.var_54 != null)
         {
            this.var_54.dispose();
            this.var_54 = null;
         }
         this.var_16 = null;
         this._config = null;
         super.dispose();
      }
      
      public function get handler() : MeMenuWidgetHandler
      {
         return var_930 as MeMenuWidgetHandler;
      }
      
      override public function get mainWindow() : IWindow
      {
         return this.var_16;
      }
      
      private function get mainContainer() : IWindowContainer
      {
         var _loc1_:* = null;
         if(this.var_16 == null)
         {
            _loc1_ = _assets.getAssetByName("memenu");
            if(_loc1_)
            {
               this.var_16 = windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
            }
         }
         if(this.var_16)
         {
            return this.var_16.findChildByTag("MAIN_CONTENT") as IWindowContainer;
         }
         return null;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_194:
               _loc2_ = new MeMenuMainView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_1237:
               _loc2_ = new MeMenuDanceView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_902:
               _loc2_ = new MeMenuSettingsMenuView();
               break;
            case const_820:
               _loc2_ = new MeMenuSoundSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(this.var_54)
            {
               this.var_54.dispose();
               this.var_54 = null;
            }
            this.var_54 = _loc2_;
            this.var_54.init(this,param1);
            this.mainContainer.removeChildAt(0);
            this.mainContainer.addChildAt(this.var_54.window,0);
            this.var_16.visible = true;
            this.var_16.activate();
         }
         this.updateSize();
      }
      
      public function updateSize() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_54 && this.var_54.window && this.var_16)
         {
            _loc1_ = 5;
            this.var_54.window.position = new Point(_loc1_,_loc1_);
            this.mainContainer.width = this.var_54.window.width + _loc1_ * 2;
            this.mainContainer.height = this.var_54.window.height + _loc1_ * 2;
            if(this._config.getBoolean("simple.memenu.enabled",false) && this.handler && this.handler.container && this.handler.container.toolbar)
            {
               _loc2_ = this.handler.container.toolbar.getRect();
               this.var_16.x = _loc2_.right + _loc1_;
               this.var_16.y = _loc2_.bottom - this.var_16.height;
            }
            else
            {
               this.var_16.x = const_1134.x;
               this.var_16.y = 0 - this.mainContainer.height;
            }
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_861,this.onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_911,this.onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_744,this.onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_951,this.onToolbarClicked);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1302,this.onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1322,this.onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_163,this.onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_267,this.onHabboClubEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_115,this.onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_438,this.onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_126,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_600,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_123,this.onCreditBalance);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_100,this.onNormalMode);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_427,this.onGameMode);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_861,this.onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_911,this.onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_744,this.onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_951,this.onToolbarClicked);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_163,this.onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_267,this.onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1302,this.onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_1322,this.onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_115,this.onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_438,this.onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_600,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_126,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_123,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_100,this.onNormalMode);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_100,this.onGameMode);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         if(this.var_54 != null)
         {
            this.var_16.removeChild(this.var_54.window);
            this.var_54.dispose();
            this.var_54 = null;
         }
         this.var_16.visible = false;
         this.var_578 = false;
         this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_1724)
         {
            return;
         }
         if(!(this.var_578 && this.var_54.window.name == const_559))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_841);
            if(messageListener != null)
            {
               if(!this.var_1723)
               {
                  messageListener.processWidgetMessage(_loc2_);
               }
            }
         }
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!this.var_578)
         {
            return;
         }
         if(this.var_54.window.name == const_820)
         {
            (this.var_54 as MeMenuSoundSettingsView).updateSettings(param1);
         }
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_600:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + this.var_578 + " view: " + this.var_54.window.name);
               if(this.var_578 != true || this.var_54.window.name != const_194)
               {
                  return;
               }
               (this.var_54 as MeMenuMainView).setIconAssets("clothes_icon",const_194,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_126:
               this.hide();
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(this.var_578)
         {
            if(this.var_16 != null && WindowToggle.isHiddenByOtherWindows(this.var_16))
            {
               this.var_16.activate();
               return;
            }
            this.var_578 = false;
         }
         else
         {
            this.var_578 = true;
         }
         if(this.var_578)
         {
            _loc2_ = new RoomWidgetMeMenuMessage(RoomWidgetMeMenuMessage.const_995);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
            this.changeView(const_194);
         }
         else
         {
            this.hide();
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         this.var_2069 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               this.var_2069 = true;
            }
         }
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(this.var_54 != null && this.var_54.window.name != const_559)
         {
            this.hide();
         }
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_54 != null && this.var_54.window.name == const_559)
         {
            this.changeView(const_194);
         }
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_54 != null && this.var_54.window.name == const_559)
         {
            this.changeView(const_194);
         }
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != this.var_1620;
         this.var_1620 = param1.daysLeft;
         this.var_2875 = param1.periodsLeft;
         this.var_3086 = param1.pastPeriods;
         this.var_2872 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != this.var_2070);
         this.var_2070 = param1.clubLevel;
         if(_loc2_)
         {
            if(this.var_54 != null)
            {
               this.changeView(this.var_54.window.name);
            }
         }
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_2873 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",this.var_2873.toString());
      }
      
      private function onNormalMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1723 = false;
      }
      
      private function onGameMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1723 = true;
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return this.var_2872;
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return this.var_1620 > 0;
      }
      
      public function get habboClubDays() : int
      {
         return this.var_1620;
      }
      
      public function get habboClubPeriods() : int
      {
         return this.var_2875;
      }
      
      public function get habboClubLevel() : int
      {
         return this.var_2070;
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return this.var_2874;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return this.var_2069;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2279;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2279 = param1;
      }
   }
}
