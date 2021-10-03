package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_3095:uint;
      
      private var _root:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_734:IWindowContext;
      
      private var var_1390:IMouseDraggingService;
      
      private var var_1388:IMouseScalingService;
      
      private var var_1389:IMouseListenerService;
      
      private var var_1385:IFocusManagerService;
      
      private var var_1387:IToolTipAgentService;
      
      private var var_1386:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_3095 = 0;
         this._root = param2;
         this.var_734 = param1;
         this.var_1390 = new WindowMouseDragger(param2);
         this.var_1388 = new WindowMouseScaler(param2);
         this.var_1389 = new WindowMouseListener(param2);
         this.var_1385 = new FocusManager(param2);
         this.var_1387 = new WindowToolTipAgent(param2);
         this.var_1386 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1390 != null)
         {
            this.var_1390.dispose();
            this.var_1390 = null;
         }
         if(this.var_1388 != null)
         {
            this.var_1388.dispose();
            this.var_1388 = null;
         }
         if(this.var_1389 != null)
         {
            this.var_1389.dispose();
            this.var_1389 = null;
         }
         if(this.var_1385 != null)
         {
            this.var_1385.dispose();
            this.var_1385 = null;
         }
         if(this.var_1387 != null)
         {
            this.var_1387.dispose();
            this.var_1387 = null;
         }
         if(this.var_1386 != null)
         {
            this.var_1386.dispose();
            this.var_1386 = null;
         }
         this._root = null;
         this.var_734 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1390;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1388;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1389;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1385;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1387;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1386;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
