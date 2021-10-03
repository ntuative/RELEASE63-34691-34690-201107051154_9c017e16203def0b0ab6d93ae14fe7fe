package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1895:String = "pricing_model_unknown";
      
      public static const const_403:String = "pricing_model_single";
      
      public static const const_425:String = "pricing_model_multi";
      
      public static const const_646:String = "pricing_model_bundle";
      
      public static const const_1998:String = "price_type_none";
      
      public static const const_811:String = "price_type_credits";
      
      public static const const_1172:String = "price_type_activitypoints";
      
      public static const const_1249:String = "price_type_credits_and_activitypoints";
       
      
      private var var_800:String;
      
      private var var_1233:String;
      
      private var var_1329:int;
      
      private var var_1896:String;
      
      private var var_1231:int;
      
      private var var_1232:int;
      
      private var var_1895:int;
      
      private var var_242:ICatalogPage;
      
      private var var_654:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_2009:int = 0;
      
      private var var_2573:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1329 = param1;
         this.var_1896 = param2;
         this.var_1231 = param3;
         this.var_1232 = param4;
         this.var_1895 = param5;
         this.var_242 = param8;
         this.var_2009 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_2009;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_242;
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
      
      public function get activityPointType() : int
      {
         return this.var_1895;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_654;
      }
      
      public function get pricingModel() : String
      {
         return this.var_800;
      }
      
      public function get priceType() : String
      {
         return this.var_1233;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2573;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2573 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1329 = 0;
         this.var_1896 = "";
         this.var_1231 = 0;
         this.var_1232 = 0;
         this.var_1895 = 0;
         this.var_242 = null;
         if(this.var_654 != null)
         {
            this.var_654.dispose();
            this.var_654 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_800)
         {
            case const_403:
               this.var_654 = new SingleProductContainer(this,param1);
               break;
            case const_425:
               this.var_654 = new MultiProductContainer(this,param1);
               break;
            case const_646:
               this.var_654 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_800);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_800 = const_403;
            }
            else
            {
               this.var_800 = const_425;
            }
         }
         else if(param1.length > 1)
         {
            this.var_800 = const_646;
         }
         else
         {
            this.var_800 = const_1895;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1231 > 0 && this.var_1232 > 0)
         {
            this.var_1233 = const_1249;
         }
         else if(this.var_1231 > 0)
         {
            this.var_1233 = const_811;
         }
         else if(this.var_1232 > 0)
         {
            this.var_1233 = const_1172;
         }
         else
         {
            this.var_1233 = const_1998;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_242.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_654.products)
         {
            _loc4_ = this.var_242.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
