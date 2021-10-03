package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2452:String;
      
      private var var_2453:Class;
      
      private var var_2451:Class;
      
      private var var_1824:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2452 = param1;
         this.var_2453 = param2;
         this.var_2451 = param3;
         if(rest == null)
         {
            this.var_1824 = new Array();
         }
         else
         {
            this.var_1824 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2452;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2453;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2451;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1824;
      }
   }
}
