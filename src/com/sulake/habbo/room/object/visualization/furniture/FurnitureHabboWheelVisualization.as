package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 10;
      
      private static const const_687:int = 20;
      
      private static const const_1457:int = 31;
      
      private static const const_1456:int = 32;
       
      
      private var var_327:Array;
      
      private var var_864:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_327 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_864)
            {
               this.var_864 = true;
               this.var_327 = new Array();
               this.var_327.push(const_1457);
               this.var_327.push(const_1456);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1068)
         {
            if(this.var_864)
            {
               this.var_864 = false;
               this.var_327 = new Array();
               this.var_327.push(const_1068 + param1);
               this.var_327.push(const_687 + param1);
               this.var_327.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_327.length > 0)
            {
               super.setAnimation(this.var_327.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
