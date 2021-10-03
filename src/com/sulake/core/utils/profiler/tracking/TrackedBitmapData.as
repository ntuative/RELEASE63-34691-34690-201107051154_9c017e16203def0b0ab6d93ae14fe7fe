package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2132:int = 16777215;
      
      public static const const_1327:int = 8191;
      
      public static const const_1349:int = 8191;
      
      public static const const_2253:int = 1;
      
      public static const const_1308:int = 1;
      
      public static const const_1388:int = 1;
      
      private static var var_557:uint = 0;
      
      private static var var_556:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1327)
         {
            param2 = const_1327;
         }
         else if(param2 < const_1308)
         {
            param2 = const_1308;
         }
         if(param3 > const_1349)
         {
            param3 = const_1349;
         }
         else if(param3 < const_1388)
         {
            param3 = const_1388;
         }
         super(param2,param3,param4,param5);
         ++var_557;
         var_556 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_557;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_556;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_556 -= width * height * 4;
            --var_557;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
