package com.sulake.habbo.catalog.viewer
{
   import com.sulake.core.window.components.IBorderWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.session.HabboClubLevelEnum;
   import flash.display.BitmapData;
   
   public class ProductContainer extends ProductGridItem implements IGetImageListener, IProductContainer, IGridItem
   {
       
      
      protected var var_104:Offer;
      
      private var var_1255:Array;
      
      public function ProductContainer(param1:Offer, param2:Array)
      {
         super();
         this.var_104 = param1;
         this.var_1255 = param2;
      }
      
      public function get products() : Array
      {
         return this.var_1255;
      }
      
      public function get firstProduct() : IProduct
      {
         return this.var_1255[0] as IProduct;
      }
      
      public function get offer() : Offer
      {
         return this.var_104;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(disposed)
         {
            return;
         }
         for each(_loc1_ in this.var_1255)
         {
            _loc1_.dispose();
         }
         this.var_1255 = null;
         super.dispose();
      }
      
      public function initProductIcon(param1:IRoomEngine) : void
      {
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         setIconImage(param2,true);
      }
      
      public function setClubIconLevel(param1:int) : void
      {
         if(view == null)
         {
            return;
         }
         var _loc2_:IBorderWindow = view.findChildByName("bg") as IBorderWindow;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:IIconWindow = _loc2_.findChildByName("clubLevelIcon") as IIconWindow;
         if(_loc3_ == null)
         {
            return;
         }
         switch(this.offer.clubLevel)
         {
            case HabboClubLevelEnum.const_52:
               _loc3_.visible = false;
               break;
            case HabboClubLevelEnum.const_35:
               _loc3_.visible = true;
               _loc3_.style = 11;
               _loc3_.x += 3;
               break;
            case HabboClubLevelEnum.const_41:
               _loc3_.visible = true;
               _loc3_.style = 12;
         }
      }
   }
}
