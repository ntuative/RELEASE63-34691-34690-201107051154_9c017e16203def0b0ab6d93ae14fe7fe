package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_731:String = "";
      
      public static const const_412:int = 0;
      
      public static const const_528:int = 255;
      
      public static const const_933:Boolean = false;
      
      public static const const_494:int = 0;
      
      public static const const_576:int = 0;
      
      public static const const_423:int = 0;
      
      public static const const_1350:int = 1;
      
      public static const const_1205:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2610:String = "";
      
      private var var_2106:int = 0;
      
      private var var_2648:int = 255;
      
      private var var_2796:Boolean = false;
      
      private var var_2795:int = 0;
      
      private var var_2794:int = 0;
      
      private var var_2793:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2610 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2610;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2106 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2106;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2648 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2648;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2796 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2796;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2795 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2795;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2794 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2794;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2793 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2793;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
