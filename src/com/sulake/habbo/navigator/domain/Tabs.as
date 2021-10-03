package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_355:int = 1;
      
      public static const const_219:int = 2;
      
      public static const const_261:int = 3;
      
      public static const const_346:int = 4;
      
      public static const const_266:int = 5;
      
      public static const const_436:int = 1;
      
      public static const const_886:int = 2;
      
      public static const const_915:int = 3;
      
      public static const const_857:int = 4;
      
      public static const const_272:int = 5;
      
      public static const const_746:int = 6;
      
      public static const const_839:int = 7;
      
      public static const const_415:int = 8;
      
      public static const const_649:int = 9;
      
      public static const const_2282:int = 10;
      
      public static const const_967:int = 11;
      
      public static const const_640:int = 12;
       
      
      private var var_476:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_476 = new Array();
         this.var_476.push(new Tab(this._navigator,const_355,const_640,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_476.push(new Tab(this._navigator,const_219,const_436,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_476.push(new Tab(this._navigator,const_346,const_967,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1324));
         this.var_476.push(new Tab(this._navigator,const_261,const_272,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_534));
         this.var_476.push(new Tab(this._navigator,const_266,const_415,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1300));
         this.setSelectedTab(const_355);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_346;
      }
      
      public function get tabs() : Array
      {
         return this.var_476;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_476)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_476)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_476)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
