package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2334:int;
      
      private var var_1918:String;
      
      private var var_2627:String;
      
      private var var_3033:Boolean;
      
      private var var_3032:Boolean;
      
      private var var_3034:int;
      
      private var var_2626:String;
      
      private var var_3031:String;
      
      private var var_1839:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2334 = param1.readInteger();
         this.var_1918 = param1.readString();
         this.var_2627 = param1.readString();
         this.var_3033 = param1.readBoolean();
         this.var_3032 = param1.readBoolean();
         param1.readString();
         this.var_3034 = param1.readInteger();
         this.var_2626 = param1.readString();
         this.var_3031 = param1.readString();
         this.var_1839 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2334;
      }
      
      public function get avatarName() : String
      {
         return this.var_1918;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2627;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_3033;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_3032;
      }
      
      public function get avatarGender() : int
      {
         return this.var_3034;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2626;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_3031;
      }
      
      public function get realName() : String
      {
         return this.var_1839;
      }
   }
}
