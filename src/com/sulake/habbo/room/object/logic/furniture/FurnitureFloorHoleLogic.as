package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectFloorHoleEvent;
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class FurnitureFloorHoleLogic extends FurnitureMultiStateLogic
   {
      
      private static const const_479:int = 0;
       
      
      private var var_1289:int = -1;
      
      private var var_208:Vector3d = null;
      
      public function FurnitureFloorHoleLogic()
      {
         super();
      }
      
      override public function dispose() : void
      {
         if(this.var_1289 == const_479)
         {
            eventDispatcher.dispatchEvent(new RoomObjectFloorHoleEvent(RoomObjectFloorHoleEvent.const_161,object.getId(),object.getType()));
         }
         super.dispose();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectFloorHoleEvent.const_150,RoomObjectFloorHoleEvent.const_161];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         super.processUpdateMessage(param1);
         if(object != null)
         {
            _loc2_ = param1 as RoomObjectDataUpdateMessage;
            if(_loc2_ != null)
            {
               _loc4_ = object.getState(0);
               if(_loc4_ != this.var_1289)
               {
                  if(eventDispatcher != null)
                  {
                     if(_loc4_ == const_479)
                     {
                        eventDispatcher.dispatchEvent(new RoomObjectFloorHoleEvent(RoomObjectFloorHoleEvent.const_150,object.getId(),object.getType()));
                     }
                     else if(this.var_1289 == const_479)
                     {
                        eventDispatcher.dispatchEvent(new RoomObjectFloorHoleEvent(RoomObjectFloorHoleEvent.const_161,object.getId(),object.getType()));
                     }
                  }
                  this.var_1289 = _loc4_;
               }
            }
            _loc3_ = object.getLocation();
            if(this.var_208 == null)
            {
               this.var_208 = new Vector3d();
            }
            else if(_loc3_.x != this.var_208.x || _loc3_.y != this.var_208.y)
            {
               if(this.var_1289 == const_479)
               {
                  if(eventDispatcher != null)
                  {
                     eventDispatcher.dispatchEvent(new RoomObjectFloorHoleEvent(RoomObjectFloorHoleEvent.const_150,object.getId(),object.getType()));
                  }
               }
            }
            this.var_208.assign(_loc3_);
         }
      }
   }
}
