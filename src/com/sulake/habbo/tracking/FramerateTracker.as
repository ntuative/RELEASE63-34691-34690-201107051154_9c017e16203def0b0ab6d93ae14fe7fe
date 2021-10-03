package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1728:int;
      
      private var var_2280:int;
      
      private var var_768:int;
      
      private var var_530:Number;
      
      private var var_2281:Boolean;
      
      private var var_2282:int;
      
      private var var_1727:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_530);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2280 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2282 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2281 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_768;
         if(this.var_768 == 1)
         {
            this.var_530 = param1;
            this.var_1728 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_768);
            this.var_530 = this.var_530 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2281 && param3 - this.var_1728 >= this.var_2280)
         {
            this.var_768 = 0;
            if(this.var_1727 < this.var_2282)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1727;
               this.var_1728 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
