package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3108:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_96 = param1.desktop;
         var_71 = param1.var_1408 as WindowController;
         var_190 = param1.var_1407 as WindowController;
         var_181 = param1.renderer;
         var_931 = param1.var_1410;
         param2.begin();
         param2.end();
         param1.desktop = var_96;
         param1.var_1408 = var_71;
         param1.var_1407 = var_190;
         param1.renderer = var_181;
         param1.var_1410 = var_931;
      }
   }
}
