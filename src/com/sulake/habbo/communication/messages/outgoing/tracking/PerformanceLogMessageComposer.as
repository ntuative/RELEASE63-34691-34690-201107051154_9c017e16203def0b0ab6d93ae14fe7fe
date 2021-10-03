package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2915:int = 0;
      
      private var var_1470:String = "";
      
      private var var_1806:String = "";
      
      private var var_2412:String = "";
      
      private var var_2916:String = "";
      
      private var var_2099:int = 0;
      
      private var var_2913:int = 0;
      
      private var var_2917:int = 0;
      
      private var var_1472:int = 0;
      
      private var var_2914:int = 0;
      
      private var var_1469:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2915 = param1;
         this.var_1470 = param2;
         this.var_1806 = param3;
         this.var_2412 = param4;
         this.var_2916 = param5;
         if(param6)
         {
            this.var_2099 = 1;
         }
         else
         {
            this.var_2099 = 0;
         }
         this.var_2913 = param7;
         this.var_2917 = param8;
         this.var_1472 = param9;
         this.var_2914 = param10;
         this.var_1469 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2915,this.var_1470,this.var_1806,this.var_2412,this.var_2916,this.var_2099,this.var_2913,this.var_2917,this.var_1472,this.var_2914,this.var_1469];
      }
   }
}
