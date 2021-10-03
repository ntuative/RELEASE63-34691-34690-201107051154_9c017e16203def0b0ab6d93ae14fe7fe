package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_138:IHabboConfigurationManager = null;
      
      private var var_612:int = 0;
      
      private var var_530:Number = 0;
      
      private var var_3070:Array;
      
      private var var_1470:String = "";
      
      private var var_1806:String = "";
      
      private var var_2412:String = "";
      
      private var var_2916:String = "";
      
      private var var_2099:Boolean = false;
      
      private var var_1809:GarbageMonitor = null;
      
      private var var_1472:int = 0;
      
      private var var_2411:Boolean;
      
      private var var_1807:int = 1000;
      
      private var var_1469:int = 0;
      
      private var _reportInterval:int = 60;
      
      private var var_1728:int = 0;
      
      private var var_1808:int = 10;
      
      private var var_1471:int = 0;
      
      private var var_2414:Number = 0.15;
      
      private var var_2413:Boolean = true;
      
      private var var_2410:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_3070 = [];
         super();
         this.var_1806 = Capabilities.version;
         this.var_2412 = Capabilities.os;
         this.var_2099 = Capabilities.isDebugger;
         this.var_1470 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1470 == null)
         {
            this.var_1470 = "unknown";
         }
         this.var_1809 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1728 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1806;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_530;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1807 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this._reportInterval = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1808 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_138 = param1;
         this._reportInterval = int(this.var_138.getKey("performancetest.interval","60"));
         this.var_1807 = int(this.var_138.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1808 = int(this.var_138.getKey("performancetest.reportlimit","10"));
         this.var_2414 = Number(this.var_138.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2413 = Boolean(int(this.var_138.getKey("performancetest.distribution.enabled","1")));
         this.var_2411 = Boolean(this.var_138.getKey("monitor.garbage.collection","0") == "1");
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1809.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1809.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         var _loc4_:* = null;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         if(this.var_2411)
         {
            _loc4_ = this.updateGarbageMonitor();
            if(_loc4_ != null)
            {
               ++this.var_1472;
               Logger.log("Garbage collection");
            }
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1807)
         {
            ++this.var_1469;
            _loc3_ = true;
         }
         else
         {
            ++this.var_612;
            if(this.var_612 <= 1)
            {
               this.var_530 = param1;
            }
            else
            {
               _loc5_ = Number(this.var_612);
               this.var_530 = this.var_530 * (_loc5_ - 1) / _loc5_ + Number(param1) / _loc5_;
            }
         }
         if(param2 - this.var_1728 > this._reportInterval * 1000 && this.var_1471 < this.var_1808)
         {
            _loc6_ = 0;
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_530 + "/s, system memory usage : " + _loc6_ + " bytes");
            _loc7_ = true;
            if(this.var_2413 && this.var_1471 > 0)
            {
               _loc8_ = this.differenceInPercents(this.var_2410,this.var_530);
               if(_loc8_ < this.var_2414)
               {
                  _loc7_ = false;
               }
            }
            this.var_1728 = param2;
            if(_loc7_ || _loc3_)
            {
               this.var_2410 = this.var_530;
               if(this.sendReport(param2))
               {
                  ++this.var_1471;
               }
            }
         }
      }
      
      private function sendReport(param1:int) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this._connection != null)
         {
            _loc2_ = null;
            _loc3_ = param1 / 1000;
            _loc4_ = -1;
            _loc5_ = 0;
            _loc2_ = new PerformanceLogMessageComposer(_loc3_,this.var_1470,this.var_1806,this.var_2412,this.var_2916,this.var_2099,_loc5_,_loc4_,this.var_1472,this.var_530,this.var_1469);
            this._connection.send(_loc2_);
            this.var_1472 = 0;
            this.var_530 = 0;
            this.var_612 = 0;
            this.var_1469 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
