package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2836:int;
      
      private var var_2837:int;
      
      private var var_2835:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2836 = param1;
         this.var_2837 = param2;
         this.var_2835 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2836,this.var_2837,this.var_2835];
      }
      
      public function dispose() : void
      {
      }
   }
}
