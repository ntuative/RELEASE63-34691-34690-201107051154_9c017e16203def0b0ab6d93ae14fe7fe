package com.sulake.habbo.communication.messages.outgoing.help
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetFaqTextMessageComposer implements IMessageComposer
   {
       
      
      private var var_2160:int;
      
      public function GetFaqTextMessageComposer(param1:int)
      {
         super();
         this.var_2160 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2160];
      }
      
      public function dispose() : void
      {
      }
   }
}
