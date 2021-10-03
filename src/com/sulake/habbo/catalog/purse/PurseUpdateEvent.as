package com.sulake.habbo.catalog.purse
{
   import flash.events.Event;
   
   public class PurseUpdateEvent extends Event
   {
      
      public static const const_914:String = "catalog_purse_update";
       
      
      public function PurseUpdateEvent(param1:Boolean = false, param2:Boolean = false)
      {
         super(const_914,param1,param2);
      }
   }
}
