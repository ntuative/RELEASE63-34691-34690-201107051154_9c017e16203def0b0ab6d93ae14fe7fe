package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1860:String = "WE_DESTROY";
      
      public static const const_338:String = "WE_DESTROYED";
      
      public static const const_1790:String = "WE_OPEN";
      
      public static const const_1745:String = "WE_OPENED";
      
      public static const const_1888:String = "WE_CLOSE";
      
      public static const const_2029:String = "WE_CLOSED";
      
      public static const const_1870:String = "WE_FOCUS";
      
      public static const const_341:String = "WE_FOCUSED";
      
      public static const const_1782:String = "WE_UNFOCUS";
      
      public static const const_1988:String = "WE_UNFOCUSED";
      
      public static const const_1825:String = "WE_ACTIVATE";
      
      public static const const_611:String = "WE_ACTIVATED";
      
      public static const const_1990:String = "WE_DEACTIVATE";
      
      public static const const_591:String = "WE_DEACTIVATED";
      
      public static const const_342:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_586:String = "WE_UNSELECT";
      
      public static const const_603:String = "WE_UNSELECTED";
      
      public static const const_2008:String = "WE_LOCK";
      
      public static const const_1801:String = "WE_LOCKED";
      
      public static const const_1896:String = "WE_UNLOCK";
      
      public static const const_1761:String = "WE_UNLOCKED";
      
      public static const const_742:String = "WE_ENABLE";
      
      public static const const_263:String = "WE_ENABLED";
      
      public static const const_827:String = "WE_DISABLE";
      
      public static const const_295:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_439:String = "WE_RELOCATED";
      
      public static const const_1310:String = "WE_RESIZE";
      
      public static const const_40:String = "WE_RESIZED";
      
      public static const const_1960:String = "WE_MINIMIZE";
      
      public static const const_2035:String = "WE_MINIMIZED";
      
      public static const const_1886:String = "WE_MAXIMIZE";
      
      public static const const_1944:String = "WE_MAXIMIZED";
      
      public static const const_1972:String = "WE_RESTORE";
      
      public static const const_1802:String = "WE_RESTORED";
      
      public static const const_569:String = "WE_CHILD_ADDED";
      
      public static const const_458:String = "WE_CHILD_REMOVED";
      
      public static const const_225:String = "WE_CHILD_RELOCATED";
      
      public static const const_158:String = "WE_CHILD_RESIZED";
      
      public static const const_321:String = "WE_CHILD_ACTIVATED";
      
      public static const const_651:String = "WE_PARENT_ADDED";
      
      public static const const_1853:String = "WE_PARENT_REMOVED";
      
      public static const const_1826:String = "WE_PARENT_RELOCATED";
      
      public static const const_644:String = "WE_PARENT_RESIZED";
      
      public static const const_1385:String = "WE_PARENT_ACTIVATED";
      
      public static const const_142:String = "WE_OK";
      
      public static const const_606:String = "WE_CANCEL";
      
      public static const const_116:String = "WE_CHANGE";
      
      public static const const_574:String = "WE_SCROLL";
      
      public static const const_113:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_754:IWindow;
      
      protected var var_1149:Boolean;
      
      protected var var_513:Boolean;
      
      protected var var_169:Boolean;
      
      protected var var_755:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_754 = param3;
         _loc5_.var_513 = param4;
         _loc5_.var_169 = false;
         _loc5_.var_755 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_754;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_513;
      }
      
      public function recycle() : void
      {
         if(this.var_169)
         {
            throw new Error("Event already recycled!");
         }
         this.var_754 = null;
         this._window = null;
         this.var_169 = true;
         this.var_1149 = false;
         this.var_755.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1149;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1149 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1149;
      }
      
      public function stopPropagation() : void
      {
         this.var_1149 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1149 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_513 + " window: " + this._window + " }";
      }
   }
}
