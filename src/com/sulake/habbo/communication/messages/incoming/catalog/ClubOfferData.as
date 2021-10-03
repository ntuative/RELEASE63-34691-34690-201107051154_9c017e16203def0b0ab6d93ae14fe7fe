package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var var_1329:int;
      
      private var var_1823:String;
      
      private var var_1802:int;
      
      private var _upgrade:Boolean;
      
      private var var_2442:Boolean;
      
      private var var_2446:int;
      
      private var var_2443:int;
      
      private var var_2445:int;
      
      private var var_2448:int;
      
      private var var_2444:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1329 = param1.readInteger();
         this.var_1823 = param1.readString();
         this.var_1802 = param1.readInteger();
         this._upgrade = param1.readBoolean();
         this.var_2442 = param1.readBoolean();
         this.var_2446 = param1.readInteger();
         this.var_2443 = param1.readInteger();
         this.var_2445 = param1.readInteger();
         this.var_2448 = param1.readInteger();
         this.var_2444 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this.var_1329;
      }
      
      public function get productCode() : String
      {
         return this.var_1823;
      }
      
      public function get price() : int
      {
         return this.var_1802;
      }
      
      public function get upgrade() : Boolean
      {
         return this._upgrade;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2442;
      }
      
      public function get periods() : int
      {
         return this.var_2446;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2443;
      }
      
      public function get year() : int
      {
         return this.var_2445;
      }
      
      public function get month() : int
      {
         return this.var_2448;
      }
      
      public function get day() : int
      {
         return this.var_2444;
      }
   }
}
