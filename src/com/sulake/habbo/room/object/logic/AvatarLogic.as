package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.room.events.RoomObjectFurnitureActionEvent;
   import com.sulake.habbo.room.events.RoomObjectMoveEvent;
   import com.sulake.habbo.room.messages.RoomObjectAvatarCarryObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarChatUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarDanceUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarEffectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFigureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFlatControlUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarGestureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPlayerValueUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPostureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSelectedMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSignUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSleepUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarTypingUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUseObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarWaveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class AvatarLogic extends MovingObjectLogic
   {
      
      private static const const_1071:Number = 1.5;
      
      private static const const_1070:int = 28;
      
      private static const const_1073:int = 29;
      
      private static const const_1072:int = 500;
      
      private static const const_1461:int = 999999999;
       
      
      private var _selected:Boolean = false;
      
      private var var_536:Vector3d = null;
      
      private var var_788:int = 0;
      
      private var var_1494:int = 0;
      
      private var var_1492:int = 0;
      
      private var var_972:int = 0;
      
      private var var_789:int = 0;
      
      private var var_1207:int = 0;
      
      private var var_1491:int = 0;
      
      private var var_1490:int = 0;
      
      private var var_971:int = 0;
      
      private var var_1835:Boolean = false;
      
      private var var_1489:int = 0;
      
      private var var_1836:int = 0;
      
      private var var_1493:int = 0;
      
      public function AvatarLogic()
      {
         super();
         this.var_1836 = getTimer() + this.getBlinkInterval();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectMouseEvent.const_168,RoomObjectMoveEvent.const_426,RoomObjectMouseEvent.const_200,RoomObjectMouseEvent.const_188,RoomObjectFurnitureActionEvent.const_299,RoomObjectFurnitureActionEvent.const_379];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc1_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_909,object.getId(),object.getType());
               eventDispatcher.dispatchEvent(_loc1_);
            }
         }
         super.dispose();
         this.var_536 = null;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         if(param1 == null || object == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(param1 is RoomObjectAvatarPostureUpdateMessage)
         {
            _loc3_ = param1 as RoomObjectAvatarPostureUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_301,_loc3_.postureType);
            _loc2_.setString(RoomObjectVariableEnum.const_894,_loc3_.parameter);
            return;
         }
         if(param1 is RoomObjectAvatarChatUpdateMessage)
         {
            _loc4_ = param1 as RoomObjectAvatarChatUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_196,1);
            this.var_1492 = getTimer() + _loc4_.numberOfWords * 1000;
            return;
         }
         if(param1 is RoomObjectAvatarTypingUpdateMessage)
         {
            _loc5_ = param1 as RoomObjectAvatarTypingUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_648,Number(_loc5_.isTyping));
            return;
         }
         if(param1 is RoomObjectAvatarUpdateMessage)
         {
            _loc6_ = param1 as RoomObjectAvatarUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_220,_loc6_.dirHead);
            return;
         }
         if(param1 is RoomObjectAvatarGestureUpdateMessage)
         {
            _loc7_ = param1 as RoomObjectAvatarGestureUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_178,_loc7_.gesture);
            this.var_1491 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarWaveUpdateMessage)
         {
            _loc8_ = param1 as RoomObjectAvatarWaveUpdateMessage;
            if(_loc8_.isWaving)
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_294,1);
               this.var_1207 = getTimer() + 0;
            }
            else
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_294,0);
               this.var_1207 = 0;
            }
            return;
         }
         if(param1 is RoomObjectAvatarDanceUpdateMessage)
         {
            _loc9_ = param1 as RoomObjectAvatarDanceUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_628,_loc9_.danceStyle);
            return;
         }
         if(param1 is RoomObjectAvatarSleepUpdateMessage)
         {
            _loc10_ = param1 as RoomObjectAvatarSleepUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_258,Number(_loc10_.isSleeping));
            return;
         }
         if(param1 is RoomObjectAvatarPlayerValueUpdateMessage)
         {
            _loc11_ = param1 as RoomObjectAvatarPlayerValueUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_397,_loc11_.value);
            this.var_1493 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarEffectUpdateMessage)
         {
            _loc12_ = param1 as RoomObjectAvatarEffectUpdateMessage;
            _loc13_ = _loc12_.effect;
            _loc14_ = _loc12_.delayMilliSeconds;
            this.updateEffect(_loc13_,_loc14_,_loc2_);
            return;
         }
         if(param1 is RoomObjectAvatarCarryObjectUpdateMessage)
         {
            _loc15_ = param1 as RoomObjectAvatarCarryObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_349,_loc15_.itemType);
            if(_loc15_.itemType < const_1461)
            {
               this.var_971 = getTimer() + 100000;
               this.var_1835 = true;
            }
            else
            {
               this.var_971 = getTimer() + 1500;
               this.var_1835 = false;
            }
            return;
         }
         if(param1 is RoomObjectAvatarUseObjectUpdateMessage)
         {
            _loc16_ = param1 as RoomObjectAvatarUseObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_254,_loc16_.itemType);
            return;
         }
         if(param1 is RoomObjectAvatarSignUpdateMessage)
         {
            _loc17_ = param1 as RoomObjectAvatarSignUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_461,_loc17_.signType);
            this.var_1490 = getTimer() + 5000;
            return;
         }
         if(param1 is RoomObjectAvatarFlatControlUpdateMessage)
         {
            _loc18_ = param1 as RoomObjectAvatarFlatControlUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_856,_loc18_.rawData);
            _loc2_.setNumber(RoomObjectVariableEnum.const_2033,Number(_loc18_.isAdmin));
            return;
         }
         if(param1 is RoomObjectAvatarFigureUpdateMessage)
         {
            _loc19_ = param1 as RoomObjectAvatarFigureUpdateMessage;
            _loc20_ = _loc2_.getString(RoomObjectVariableEnum.const_208);
            _loc21_ = _loc19_.figure;
            _loc22_ = _loc19_.gender;
            if(_loc20_ != null && _loc20_.indexOf(".bds-") != -1)
            {
               _loc21_ += _loc20_.substr(_loc20_.indexOf(".bds-"));
            }
            _loc2_.setString(RoomObjectVariableEnum.const_208,_loc21_);
            _loc2_.setString(RoomObjectVariableEnum.AVATAR_GENDER,_loc22_);
            return;
         }
         if(param1 is RoomObjectAvatarSelectedMessage)
         {
            _loc23_ = param1 as RoomObjectAvatarSelectedMessage;
            this._selected = _loc23_.selected;
            this.var_536 = null;
            return;
         }
      }
      
      private function updateEffect(param1:int, param2:int, param3:IRoomObjectModelController) : void
      {
         if(param1 == const_1070)
         {
            this.var_788 = getTimer() + const_1072;
            this.var_1494 = const_1073;
         }
         else if(param3.getNumber(RoomObjectVariableEnum.const_655) == const_1073)
         {
            this.var_788 = getTimer() + const_1072;
            this.var_1494 = param1;
            param1 = const_1070;
         }
         else
         {
            if(param2 != 0)
            {
               this.var_788 = getTimer() + param2;
               this.var_1494 = param1;
               return;
            }
            this.var_788 = 0;
         }
         param3.setNumber(RoomObjectVariableEnum.const_655,param1);
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(object == null || param1 == null)
         {
            return;
         }
         var _loc3_:* = null;
         switch(param1.type)
         {
            case MouseEvent.CLICK:
               _loc3_ = "null";
               break;
            case MouseEvent.ROLL_OVER:
               _loc3_ = "null";
               eventDispatcher.dispatchEvent(new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_299,object.getId(),object.getType()));
               break;
            case MouseEvent.ROLL_OUT:
               _loc3_ = "null";
               eventDispatcher.dispatchEvent(new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_379,object.getId(),object.getType()));
         }
         if(_loc3_ != null)
         {
            _loc4_ = object.getId();
            _loc5_ = object.getType();
            if(eventDispatcher != null)
            {
               _loc6_ = new RoomObjectMouseEvent(_loc3_,param1.eventId,_loc4_,_loc5_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
               eventDispatcher.dispatchEvent(_loc6_);
            }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.update(param1);
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc2_ = object.getLocation();
               if(this.var_536 == null || this.var_536.x != _loc2_.x || this.var_536.y != _loc2_.y || this.var_536.z != _loc2_.z)
               {
                  if(this.var_536 == null)
                  {
                     this.var_536 = new Vector3d();
                  }
                  this.var_536.assign(_loc2_);
                  _loc3_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_426,object.getId(),object.getType());
                  eventDispatcher.dispatchEvent(_loc3_);
               }
            }
         }
         if(object != null && object.getModelController() != null)
         {
            this.updateActions(param1,object.getModelController());
         }
      }
      
      private function updateActions(param1:int, param2:IRoomObjectModelController) : void
      {
         if(this.var_1492 > 0)
         {
            if(param1 > this.var_1492)
            {
               param2.setNumber(RoomObjectVariableEnum.const_196,0);
               this.var_1492 = 0;
               this.var_789 = 0;
               this.var_972 = 0;
            }
            else if(this.var_972 == 0 && this.var_789 == 0)
            {
               this.var_789 = param1 + this.getTalkingPauseInterval();
               this.var_972 = this.var_789 + this.getTalkingPauseLength();
            }
            else if(this.var_789 > 0 && param1 > this.var_789)
            {
               param2.setNumber(RoomObjectVariableEnum.const_196,0);
               this.var_789 = 0;
            }
            else if(this.var_972 > 0 && param1 > this.var_972)
            {
               param2.setNumber(RoomObjectVariableEnum.const_196,1);
               this.var_972 = 0;
            }
         }
         if(this.var_1207 > 0 && param1 > this.var_1207)
         {
            param2.setNumber(RoomObjectVariableEnum.const_294,0);
            this.var_1207 = 0;
         }
         if(this.var_1491 > 0 && param1 > this.var_1491)
         {
            param2.setNumber(RoomObjectVariableEnum.const_178,0);
            this.var_1491 = 0;
         }
         if(this.var_1490 > 0 && param1 > this.var_1490)
         {
            param2.setNumber(RoomObjectVariableEnum.const_461,0);
            this.var_1490 = 0;
         }
         if(this.var_971 > 0)
         {
            if(param1 > this.var_971)
            {
               param2.setNumber(RoomObjectVariableEnum.const_349,0);
               this.var_971 = 0;
            }
            else if((this.var_971 - param1) % 10000 < 1000 && this.var_1835)
            {
               param2.setNumber(RoomObjectVariableEnum.const_254,1);
            }
            else
            {
               param2.setNumber(RoomObjectVariableEnum.const_254,0);
            }
         }
         if(param1 > this.var_1836)
         {
            param2.setNumber(RoomObjectVariableEnum.const_926,1);
            this.var_1836 = param1 + this.getBlinkInterval();
            this.var_1489 = param1 + this.getBlinkLength();
         }
         if(this.var_1489 > 0 && param1 > this.var_1489)
         {
            param2.setNumber(RoomObjectVariableEnum.const_926,0);
            this.var_1489 = 0;
         }
         if(this.var_788 > 0 && param1 > this.var_788)
         {
            param2.setNumber(RoomObjectVariableEnum.const_655,this.var_1494);
            this.var_788 = 0;
         }
         if(this.var_1493 > 0 && param1 > this.var_1493)
         {
            param2.setNumber(RoomObjectVariableEnum.const_397,0);
            this.var_1493 = 0;
         }
      }
      
      private function getTalkingPauseInterval() : int
      {
         return 100 + Math.random() * 200;
      }
      
      private function getTalkingPauseLength() : int
      {
         return 75 + Math.random() * 75;
      }
      
      private function getBlinkInterval() : int
      {
         return 4500 + Math.random() * 1000;
      }
      
      private function getBlinkLength() : int
      {
         return 50 + Math.random() * 200;
      }
      
      private function targetIsWarping(param1:IVector3d) : Boolean
      {
         var _loc2_:IVector3d = object.getLocation();
         if(param1 == null)
         {
            return false;
         }
         if(_loc2_.x == 0 && _loc2_.y == 0)
         {
            return false;
         }
         if(Math.abs(_loc2_.x - param1.x) > const_1071 || Math.abs(_loc2_.y - param1.y) > const_1071)
         {
            return true;
         }
         return false;
      }
   }
}
