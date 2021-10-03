package com.sulake.habbo.notifications
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.session.events.BadgeImageReadyEvent;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.ExtensionViewEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.Event;
   
   public class HabboNotificationViewManager implements IUpdateReceiver
   {
      
      private static const const_473:int = 4;
       
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _toolbar:IHabboToolbar;
      
      private var var_1247:Map;
      
      private var var_1068:Map;
      
      private var _disposed:Boolean = false;
      
      private var var_205:Array;
      
      public function HabboNotificationViewManager(param1:IAssetLibrary, param2:IHabboWindowManager, param3:IHabboConfigurationManager, param4:IHabboToolbar, param5:Map, param6:Map)
      {
         super();
         this._assetLibrary = param1;
         this._windowManager = param2;
         this._toolbar = param4;
         this.var_1247 = param5;
         this.var_1068 = param6;
         this.var_205 = new Array();
         this._toolbar.events.addEventListener(ExtensionViewEvent.const_1346,this.refreshTopMargin);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function replaceIcon(param1:BadgeImageReadyEvent) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_205)
         {
            _loc2_.replaceIcon(param1);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:int = this.var_205.length;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            (this.var_205.pop() as HabboNotificationItemView).dispose();
            _loc2_++;
         }
         this._assetLibrary = null;
         this._windowManager = null;
         if(this.var_1247)
         {
            this.var_1247.dispose();
            this.var_1247 = null;
         }
         if(this.var_1068)
         {
            this.var_1068.dispose();
            this.var_1068 = null;
         }
         this._disposed = true;
      }
      
      public function showItem(param1:HabboNotificationItem) : Boolean
      {
         if(!this.isSpaceAvailable())
         {
            return false;
         }
         var _loc2_:HabboNotificationItemView = new HabboNotificationItemView(this._assetLibrary.getAssetByName("layout_notification_xml"),this._windowManager,this.var_1247,this.var_1068,param1);
         _loc2_.reposition(this.getNextAvailableVerticalPosition());
         this.var_205.push(_loc2_);
         this.var_205.sortOn("verticalPosition",Array.NUMERIC);
         return true;
      }
      
      public function isSpaceAvailable() : Boolean
      {
         return this.getNextAvailableVerticalPosition() + HabboNotificationItemView.const_622 < this._windowManager.getDesktop(0).height;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < this.var_205.length)
         {
            (this.var_205[_loc2_] as HabboNotificationItemView).update(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.var_205.length)
         {
            _loc3_ = this.var_205[_loc2_] as HabboNotificationItemView;
            if(_loc3_.ready)
            {
               _loc3_.dispose();
               this.var_205.splice(_loc2_,1);
               _loc2_--;
            }
            _loc2_++;
         }
      }
      
      private function getNextAvailableVerticalPosition() : int
      {
         var _loc4_:* = null;
         var _loc1_:int = this._toolbar.extensionView.screenHeight + const_473;
         if(this.var_205.length == 0)
         {
            return _loc1_;
         }
         var _loc2_:int = _loc1_;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_205.length)
         {
            _loc4_ = this.var_205[_loc3_] as HabboNotificationItemView;
            if(_loc2_ + HabboNotificationItemView.const_622 < _loc4_.verticalPosition)
            {
               return _loc2_;
            }
            _loc2_ = _loc4_.verticalPosition + HabboNotificationItemView.const_622 + const_473;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function refreshTopMargin(param1:Event) : void
      {
         var _loc4_:* = null;
         var _loc2_:int = this._toolbar.extensionView.screenHeight + const_473;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_205.length)
         {
            _loc4_ = this.var_205[_loc3_] as HabboNotificationItemView;
            _loc4_.reposition(_loc2_);
            _loc2_ = _loc4_.verticalPosition + HabboNotificationItemView.const_622 + const_473;
            _loc3_++;
         }
      }
   }
}
