package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1371:Boolean;
      
      private var var_1370:Boolean;
      
      private var var_1658:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1371;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1370;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1658;
      }
      
      public function flush() : Boolean
      {
         this.var_1371 = false;
         this.var_1370 = false;
         this.var_1658 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1371 = param1.readBoolean();
         this.var_1370 = param1.readBoolean();
         this.var_1658 = param1.readBoolean();
         return true;
      }
   }
}
