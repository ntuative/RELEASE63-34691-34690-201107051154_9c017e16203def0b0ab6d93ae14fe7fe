package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallAdRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_575:WallRasterizer;
      
      private var var_576:FloorRasterizer;
      
      private var var_874:WallAdRasterizer;
      
      private var var_574:LandscapeRasterizer;
      
      private var var_873:PlaneMaskManager;
      
      private var var_813:Boolean = false;
      
      public function RoomVisualizationData()
      {
         super();
         this.var_575 = new WallRasterizer();
         this.var_576 = new FloorRasterizer();
         this.var_874 = new WallAdRasterizer();
         this.var_574 = new LandscapeRasterizer();
         this.var_873 = new PlaneMaskManager();
      }
      
      public function get initialized() : Boolean
      {
         return this.var_813;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return this.var_576;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return this.var_575;
      }
      
      public function get wallAdRasterizr() : WallAdRasterizer
      {
         return this.var_874;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return this.var_574;
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return this.var_873;
      }
      
      public function dispose() : void
      {
         if(this.var_575 != null)
         {
            this.var_575.dispose();
            this.var_575 = null;
         }
         if(this.var_576 != null)
         {
            this.var_576.dispose();
            this.var_576 = null;
         }
         if(this.var_874 != null)
         {
            this.var_874.dispose();
            this.var_874 = null;
         }
         if(this.var_574 != null)
         {
            this.var_574.dispose();
            this.var_574 = null;
         }
         if(this.var_873 != null)
         {
            this.var_873.dispose();
            this.var_873 = null;
         }
      }
      
      public function clearCache() : void
      {
         if(this.var_575 != null)
         {
            this.var_575.clearCache();
         }
         if(this.var_576 != null)
         {
            this.var_576.clearCache();
         }
         if(this.var_574 != null)
         {
            this.var_574.clearCache();
         }
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         this.reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc7_ = _loc2_[0];
            this.var_575.initialize(_loc7_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc8_ = _loc3_[0];
            this.var_576.initialize(_loc8_);
         }
         var _loc4_:XMLList = param1.wallAdData;
         if(_loc4_.length() > 0)
         {
            _loc9_ = _loc4_[0];
            this.var_874.initialize(_loc9_);
         }
         var _loc5_:XMLList = param1.landscapeData;
         if(_loc5_.length() > 0)
         {
            _loc10_ = _loc5_[0];
            this.var_574.initialize(_loc10_);
         }
         var _loc6_:XMLList = param1.maskData;
         if(_loc6_.length() > 0)
         {
            _loc11_ = _loc6_[0];
            this.var_873.initialize(_loc11_);
         }
         return true;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(this.var_813)
         {
            return;
         }
         this.var_575.initializeAssetCollection(param1);
         this.var_576.initializeAssetCollection(param1);
         this.var_874.initializeAssetCollection(param1);
         this.var_574.initializeAssetCollection(param1);
         this.var_873.initializeAssetCollection(param1);
         this.var_813 = true;
      }
      
      protected function reset() : void
      {
      }
   }
}
