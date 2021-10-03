package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_64:String = "i";
      
      public static const const_72:String = "s";
      
      public static const const_186:String = "e";
       
      
      private var var_1567:String;
      
      private var var_2954:int;
      
      private var var_1029:String;
      
      private var var_1566:int;
      
      private var var_1978:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1567 = param1.readString();
         this.var_2954 = param1.readInteger();
         this.var_1029 = param1.readString();
         this.var_1566 = param1.readInteger();
         this.var_1978 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1567;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2954;
      }
      
      public function get extraParam() : String
      {
         return this.var_1029;
      }
      
      public function get productCount() : int
      {
         return this.var_1566;
      }
      
      public function get expiration() : int
      {
         return this.var_1978;
      }
   }
}
