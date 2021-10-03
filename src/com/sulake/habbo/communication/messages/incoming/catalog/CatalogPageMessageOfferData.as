package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_1329:int;
      
      private var var_1896:String;
      
      private var var_1231:int;
      
      private var var_1232:int;
      
      private var var_1895:int;
      
      private var var_2009:int;
      
      private var var_1255:Array;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1329 = param1.readInteger();
         this.var_1896 = param1.readString();
         this.var_1231 = param1.readInteger();
         this.var_1232 = param1.readInteger();
         this.var_1895 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1255 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1255.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
         this.var_2009 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function get localizationId() : String
      {
         return this.var_1896;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1231;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1232;
      }
      
      public function get products() : Array
      {
         return this.var_1255;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1895;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2009;
      }
   }
}
