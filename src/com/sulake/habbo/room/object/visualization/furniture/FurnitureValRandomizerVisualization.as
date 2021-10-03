package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1068:int = 20;
      
      private static const const_687:int = 10;
      
      private static const const_1457:int = 31;
      
      private static const const_1456:int = 32;
      
      private static const const_688:int = 30;
       
      
      private var var_327:Array;
      
      private var var_864:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_327 = new Array();
         super();
         super.setAnimation(const_688);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_687)
         {
            if(this.var_864)
            {
               this.var_864 = false;
               this.var_327 = new Array();
               if(direction == 2)
               {
                  this.var_327.push(const_1068 + 5 - param1);
                  this.var_327.push(const_687 + 5 - param1);
               }
               else
               {
                  this.var_327.push(const_1068 + param1);
                  this.var_327.push(const_687 + param1);
               }
               this.var_327.push(const_688);
               return;
            }
            super.setAnimation(const_688);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
