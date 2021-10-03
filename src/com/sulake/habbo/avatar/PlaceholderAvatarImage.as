package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_889:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1152)
         {
            _structure = null;
            _assets = null;
            var_274 = null;
            var_315 = null;
            _figure = null;
            var_610 = null;
            var_361 = null;
            if(!var_1427 && var_47)
            {
               var_47.dispose();
            }
            var_47 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_821 = null;
            var_1152 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_889[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_889[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_401:
               switch(_loc3_)
               {
                  case AvatarAction.const_836:
                  case AvatarAction.const_573:
                  case AvatarAction.const_422:
                  case AvatarAction.const_1010:
                  case AvatarAction.const_413:
                  case AvatarAction.const_974:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_359:
            case AvatarAction.const_151:
            case AvatarAction.const_298:
            case AvatarAction.const_907:
            case AvatarAction.const_969:
            case AvatarAction.const_1015:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
