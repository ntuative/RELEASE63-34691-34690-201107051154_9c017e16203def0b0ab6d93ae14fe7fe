package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1434:IHabboTracking;
      
      private var var_2040:Boolean = false;
      
      private var var_3020:int = 0;
      
      private var var_2191:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1434 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1434 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2040 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_3020 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2040)
         {
            return;
         }
         ++this.var_2191;
         if(this.var_2191 <= this.var_3020)
         {
            this.var_1434.trackGoogle("toolbar",param1);
         }
      }
   }
}
