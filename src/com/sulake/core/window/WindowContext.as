package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_654:uint = 0;
      
      public static const const_1836:uint = 1;
      
      public static const const_2126:int = 0;
      
      public static const const_2179:int = 1;
      
      public static const const_2324:int = 2;
      
      public static const const_2328:int = 3;
      
      public static const const_1951:int = 4;
      
      public static const const_441:int = 5;
      
      public static var var_426:IEventQueue;
      
      private static var var_732:IEventProcessor;
      
      private static var var_2139:uint = const_654;
      
      private static var stage:Stage;
      
      private static var var_181:IWindowRenderer;
       
      
      private var var_2980:EventProcessorState;
      
      private var var_2981:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_150:DisplayObjectContainer;
      
      protected var var_3102:Boolean = true;
      
      protected var var_1424:Error;
      
      protected var var_2264:int = -1;
      
      protected var var_1429:IInternalWindowServices;
      
      protected var var_1705:IWindowParser;
      
      protected var var_3060:IWindowFactory;
      
      protected var var_96:IDesktopWindow;
      
      protected var var_1706:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_602:Boolean = false;
      
      private var var_2982:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_181 = param2;
         this._localization = param4;
         this.var_150 = param5;
         this.var_1429 = new ServiceManager(this,param5);
         this.var_3060 = param3;
         this.var_1705 = new WindowParser(this);
         this.var_2981 = param7;
         if(!stage)
         {
            if(this.var_150 is Stage)
            {
               stage = this.var_150 as Stage;
            }
            else if(this.var_150.stage)
            {
               stage = this.var_150.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_96 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_96.limits.maxWidth = param6.width;
         this.var_96.limits.maxHeight = param6.height;
         this.var_150.addChild(this.var_96.getDisplayObject());
         this.var_150.doubleClickEnabled = true;
         this.var_150.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2980 = new EventProcessorState(var_181,this.var_96,this.var_96,null,this.var_2981);
         inputMode = const_654;
         this.var_1706 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_2139;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_426)
         {
            if(var_426 is IDisposable)
            {
               IDisposable(var_426).dispose();
            }
         }
         if(var_732)
         {
            if(var_732 is IDisposable)
            {
               IDisposable(var_732).dispose();
            }
         }
         switch(value)
         {
            case const_654:
               var_426 = new MouseEventQueue(stage);
               var_732 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1836:
               var_426 = new TabletEventQueue(stage);
               var_732 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_654;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_150.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_150.removeChild(IGraphicContextHost(this.var_96).getGraphicContext(true) as DisplayObject);
            this.var_96.destroy();
            this.var_96 = null;
            this.var_1706.destroy();
            this.var_1706 = null;
            if(this.var_1429 is IDisposable)
            {
               IDisposable(this.var_1429).dispose();
            }
            this.var_1429 = null;
            this.var_1705.dispose();
            this.var_1705 = null;
            var_181 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1424;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2264;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1424 = param2;
         this.var_2264 = param1;
         if(this.var_3102)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1424 = null;
         this.var_2264 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1429;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1705;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_3060;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_96;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_96.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1951,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1706;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_96,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_96)
         {
            this.var_96 = null;
         }
         if(param1.state != WindowState.const_540)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_181.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_602 = true;
         if(this.var_1424)
         {
            throw this.var_1424;
         }
         var_732.process(this.var_2980,var_426);
         this.var_602 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2982 = true;
         var_181.update(param1);
         this.var_2982 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_96 != null && !this.var_96.disposed)
         {
            if(this.var_150 is Stage)
            {
               this.var_96.limits.maxWidth = Stage(this.var_150).stageWidth;
               this.var_96.limits.maxHeight = Stage(this.var_150).stageHeight;
               this.var_96.width = Stage(this.var_150).stageWidth;
               this.var_96.height = Stage(this.var_150).stageHeight;
            }
            else
            {
               this.var_96.limits.maxWidth = this.var_150.width;
               this.var_96.limits.maxHeight = this.var_150.height;
               this.var_96.width = this.var_150.width;
               this.var_96.height = this.var_150.height;
            }
         }
      }
   }
}
