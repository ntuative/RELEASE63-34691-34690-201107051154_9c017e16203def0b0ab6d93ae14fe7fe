package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2776:String;
      
      private var var_2585:int;
      
      private var var_2328:int;
      
      private var var_2586:String;
      
      private var var_3018:int;
      
      private var var_1953:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2776 = param1.readString();
         this.var_2585 = param1.readInteger();
         this.var_2328 = param1.readInteger();
         this.var_2586 = param1.readString();
         this.var_3018 = param1.readInteger();
         this.var_1953 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2776;
      }
      
      public function get unitPort() : int
      {
         return this.var_2585;
      }
      
      public function get worldId() : int
      {
         return this.var_2328;
      }
      
      public function get castLibs() : String
      {
         return this.var_2586;
      }
      
      public function get maxUsers() : int
      {
         return this.var_3018;
      }
      
      public function get nodeId() : int
      {
         return this.var_1953;
      }
   }
}
