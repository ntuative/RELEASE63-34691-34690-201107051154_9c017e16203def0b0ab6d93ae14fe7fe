package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1456:int = 3;
      
      private static const const_1590:int = 2;
      
      private static const const_1589:int = 1;
      
      private static const const_1591:int = 15;
       
      
      private var var_327:Array;
      
      private var var_1317:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_327 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1590)
         {
            this.var_327 = new Array();
            this.var_327.push(const_1589);
            this.var_1317 = const_1591;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1317 > 0)
         {
            --this.var_1317;
         }
         if(this.var_1317 == 0)
         {
            if(this.var_327.length > 0)
            {
               super.setAnimation(this.var_327.shift());
            }
         }
         return super.updateAnimation(param1);
      }
      
      override protected function usesAnimationResetting() : Boolean
      {
         return true;
      }
   }
}
