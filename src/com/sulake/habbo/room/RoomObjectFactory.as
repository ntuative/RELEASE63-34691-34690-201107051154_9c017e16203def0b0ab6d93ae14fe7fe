package com.sulake.habbo.room
{
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.room.object.RoomObjectLogicEnum;
   import com.sulake.habbo.room.object.logic.AvatarLogic;
   import com.sulake.habbo.room.object.logic.PetLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureClothingChangeLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureCounterClockLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureCreditLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureDiceLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureEcotronBoxLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureFireworksLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureFloorHoleLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureHabboWheelLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureHockeyScoreLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureIceStormLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureJukeboxLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureMultiStateLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureOneWayDoorLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePlaceholderLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePlanetSystemLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePresentLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurniturePushableLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureQuestVendingWallItemLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRandomStateLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRoomBackgroundLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRoomBillboardLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureRoomDimmerLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureScoreBoardLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureSongDiskLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureSoundMachineLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureStickieLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureTeaserLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureTrophyLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureWelcomeGiftLogic;
   import com.sulake.habbo.room.object.logic.furniture.FurnitureWindowLogic;
   import com.sulake.habbo.room.object.logic.room.RoomLogic;
   import com.sulake.habbo.room.object.logic.room.RoomTileCursorLogic;
   import com.sulake.habbo.room.object.logic.room.SelectionArrowLogic;
   import com.sulake.habbo.room.object.logic.room.publicroom.PublicRoomLogic;
   import com.sulake.habbo.room.object.logic.room.publicroom.PublicRoomParkLogic;
   import com.sulake.room.IRoomObjectFactory;
   import com.sulake.room.IRoomObjectManager;
   import com.sulake.room.RoomObjectManager;
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   
   public class RoomObjectFactory extends Component implements IRoomObjectFactory
   {
       
      
      private var var_1740:Map;
      
      private var var_1171:Map;
      
      private var var_947:Array;
      
      public function RoomObjectFactory(param1:IContext, param2:uint = 0)
      {
         this.var_1740 = new Map();
         this.var_1171 = new Map();
         this.var_947 = [];
         super(param1,param2);
      }
      
      public function addObjectEventListener(param1:Function) : void
      {
         var _loc2_:* = null;
         if(this.var_947.indexOf(param1) < 0)
         {
            this.var_947.push(param1);
            if(param1 != null)
            {
               for each(_loc2_ in this.var_1171.getKeys())
               {
                  events.addEventListener(_loc2_,param1);
               }
            }
         }
      }
      
      public function removeObjectEventListener(param1:Function) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = this.var_947.indexOf(param1);
         if(_loc3_ >= 0)
         {
            this.var_947.splice(_loc3_,1);
            if(param1 != null)
            {
               for each(_loc2_ in this.var_1171.getKeys())
               {
                  events.removeEventListener(_loc2_,param1);
               }
            }
         }
      }
      
      private function addTrackedEventType(param1:String) : void
      {
         var _loc2_:* = null;
         if(this.var_1171.getValue(param1) == null)
         {
            this.var_1171.add(param1,true);
            for each(_loc2_ in this.var_947)
            {
               if(_loc2_ != null)
               {
                  events.addEventListener(param1,_loc2_);
               }
            }
         }
      }
      
      public function createRoomObjectLogic(param1:String) : IRoomObjectEventHandler
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc2_:* = null;
         switch(param1)
         {
            case RoomObjectLogicEnum.const_1753:
               _loc2_ = FurnitureLogic;
               break;
            case RoomObjectLogicEnum.const_1837:
               _loc2_ = FurnitureMultiStateLogic;
               break;
            case RoomObjectLogicEnum.const_1965:
               _loc2_ = FurniturePlaceholderLogic;
               break;
            case RoomObjectLogicEnum.const_289:
            case RoomObjectLogicEnum.BOT:
               _loc2_ = AvatarLogic;
               break;
            case RoomObjectLogicEnum.const_58:
               _loc2_ = PetLogic;
               break;
            case RoomObjectLogicEnum.const_1798:
               _loc2_ = FurnitureRandomStateLogic;
               break;
            case RoomObjectLogicEnum.const_1751:
               _loc2_ = FurnitureCreditLogic;
               break;
            case RoomObjectLogicEnum.const_320:
               _loc2_ = FurnitureStickieLogic;
               break;
            case RoomObjectLogicEnum.const_1796:
               _loc2_ = FurniturePresentLogic;
               break;
            case RoomObjectLogicEnum.const_1814:
               _loc2_ = FurnitureTrophyLogic;
               break;
            case RoomObjectLogicEnum.const_1829:
               _loc2_ = FurnitureTeaserLogic;
               break;
            case RoomObjectLogicEnum.const_1856:
               _loc2_ = FurnitureEcotronBoxLogic;
               break;
            case RoomObjectLogicEnum.const_2014:
               _loc2_ = FurnitureDiceLogic;
               break;
            case RoomObjectLogicEnum.const_1908:
               _loc2_ = FurnitureHockeyScoreLogic;
               break;
            case RoomObjectLogicEnum.const_345:
               _loc2_ = FurnitureHabboWheelLogic;
               break;
            case RoomObjectLogicEnum.const_1797:
               _loc2_ = FurnitureQuestVendingWallItemLogic;
               break;
            case RoomObjectLogicEnum.const_1774:
               _loc2_ = FurnitureOneWayDoorLogic;
               break;
            case RoomObjectLogicEnum.const_358:
               _loc2_ = FurniturePlanetSystemLogic;
               break;
            case RoomObjectLogicEnum.const_1803:
               _loc2_ = FurnitureWindowLogic;
               break;
            case RoomObjectLogicEnum.const_1847:
               _loc2_ = FurnitureRoomDimmerLogic;
               break;
            case RoomObjectLogicEnum.const_1845:
               _loc2_ = RoomTileCursorLogic;
               break;
            case RoomObjectLogicEnum.const_1823:
               _loc2_ = SelectionArrowLogic;
               break;
            case RoomObjectLogicEnum.const_1785:
               _loc2_ = FurnitureSoundMachineLogic;
               break;
            case RoomObjectLogicEnum.const_1970:
               _loc2_ = FurnitureJukeboxLogic;
               break;
            case RoomObjectLogicEnum.const_1967:
               _loc2_ = FurnitureSongDiskLogic;
               break;
            case RoomObjectLogicEnum.const_1945:
               _loc2_ = FurniturePushableLogic;
               break;
            case RoomObjectLogicEnum.const_1881:
               _loc2_ = FurnitureClothingChangeLogic;
               break;
            case RoomObjectLogicEnum.const_333:
               _loc2_ = FurnitureCounterClockLogic;
               break;
            case RoomObjectLogicEnum.const_376:
               _loc2_ = FurnitureScoreBoardLogic;
               break;
            case RoomObjectLogicEnum.const_1862:
               _loc2_ = FurnitureIceStormLogic;
               break;
            case RoomObjectLogicEnum.const_352:
               _loc2_ = FurnitureFireworksLogic;
               break;
            case RoomObjectLogicEnum.const_331:
               _loc2_ = FurnitureRoomBillboardLogic;
               break;
            case RoomObjectLogicEnum.const_324:
               _loc2_ = FurnitureRoomBackgroundLogic;
               break;
            case RoomObjectLogicEnum.const_1925:
               _loc2_ = FurnitureWelcomeGiftLogic;
               break;
            case RoomObjectLogicEnum.const_1890:
               _loc2_ = FurnitureFloorHoleLogic;
               break;
            case RoomObjectLogicEnum.ROOM:
               _loc2_ = RoomLogic;
               break;
            case RoomObjectLogicEnum.const_340:
               _loc2_ = PublicRoomLogic;
               break;
            case RoomObjectLogicEnum.const_372:
               _loc2_ = PublicRoomParkLogic;
         }
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:Object = new _loc2_();
         if(_loc3_ is IRoomObjectEventHandler)
         {
            _loc4_ = _loc3_ as IRoomObjectEventHandler;
            _loc4_.eventDispatcher = this.events;
            if(this.var_1740.getValue(param1) == null)
            {
               this.var_1740.add(param1,true);
               _loc5_ = _loc4_.getEventTypes();
               for each(_loc6_ in _loc5_)
               {
                  this.addTrackedEventType(_loc6_);
               }
            }
            return _loc4_;
         }
         return null;
      }
      
      public function createRoomObjectManager() : IRoomObjectManager
      {
         return new RoomObjectManager();
      }
   }
}
