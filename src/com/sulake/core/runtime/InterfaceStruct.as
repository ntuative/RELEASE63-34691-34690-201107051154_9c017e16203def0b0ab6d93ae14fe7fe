package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1457:IID;
      
      private var var_1788:String;
      
      private var var_121:IUnknown;
      
      private var var_777:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1457 = param1;
         this.var_1788 = getQualifiedClassName(this.var_1457);
         this.var_121 = param2;
         this.var_777 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1457;
      }
      
      public function get iis() : String
      {
         return this.var_1788;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_121;
      }
      
      public function get references() : uint
      {
         return this.var_777;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_121 == null;
      }
      
      public function dispose() : void
      {
         this.var_1457 = null;
         this.var_1788 = null;
         this.var_121 = null;
         this.var_777 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_777;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_777) : uint(0);
      }
   }
}
