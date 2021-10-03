package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1034:int;
      
      private var var_809:Boolean;
      
      private var var_1840:Boolean;
      
      private var _figure:String;
      
      private var var_1565:int;
      
      private var var_1841:String;
      
      private var var_1838:String;
      
      private var var_1839:String;
      
      private var var_2733:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1034 = param1.readInteger();
         this.var_809 = param1.readBoolean();
         this.var_1840 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1565 = param1.readInteger();
         this.var_1841 = param1.readString();
         this.var_1838 = param1.readString();
         this.var_1839 = param1.readString();
         this.var_2733 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1034;
      }
      
      public function get online() : Boolean
      {
         return this.var_809;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1840;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1565;
      }
      
      public function get motto() : String
      {
         return this.var_1841;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1838;
      }
      
      public function get realName() : String
      {
         return this.var_1839;
      }
      
      public function get facebookId() : String
      {
         return this.var_2733;
      }
   }
}
