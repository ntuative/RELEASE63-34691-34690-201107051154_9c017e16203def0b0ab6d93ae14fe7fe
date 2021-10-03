package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function method_2(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_990;
         param1["badge"] = const_984;
         param1["bitmap"] = const_459;
         param1["border"] = const_799;
         param1["border_notify"] = const_1731;
         param1["bubble"] = const_817;
         param1["bubble_pointer_up"] = const_1163;
         param1["bubble_pointer_right"] = const_1400;
         param1["bubble_pointer_down"] = const_1261;
         param1["bubble_pointer_left"] = const_1320;
         param1["button"] = const_584;
         param1["button_thick"] = const_768;
         param1["button_icon"] = const_2030;
         param1["button_group_left"] = const_739;
         param1["button_group_center"] = const_977;
         param1["button_group_right"] = const_1002;
         param1["canvas"] = const_753;
         param1["checkbox"] = const_785;
         param1["closebutton"] = const_1224;
         param1["container"] = const_429;
         param1["container_button"] = const_762;
         param1["display_object_wrapper"] = const_945;
         param1["dropmenu"] = const_505;
         param1["dropmenu_item"] = const_544;
         param1["frame"] = const_411;
         param1["frame_notify"] = const_1727;
         param1["header"] = const_754;
         param1["html"] = const_1392;
         param1["icon"] = const_1307;
         param1["itemgrid"] = const_1216;
         param1["itemgrid_horizontal"] = const_504;
         param1["itemgrid_vertical"] = const_807;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_452;
         param1["itemlist_vertical"] = const_406;
         param1["label"] = const_881;
         param1["maximizebox"] = const_1974;
         param1["menu"] = const_1983;
         param1["menu_item"] = const_1750;
         param1["submenu"] = const_1345;
         param1["minimizebox"] = const_2002;
         param1["notify"] = const_1876;
         param1["TutorialMainView"] = const_970;
         param1["password"] = const_1006;
         param1["radiobutton"] = const_988;
         param1["region"] = const_350;
         param1["restorebox"] = const_1905;
         param1["scaler"] = const_672;
         param1["scaler_horizontal"] = const_1942;
         param1["scaler_vertical"] = const_1948;
         param1["scrollbar_horizontal"] = const_571;
         param1["scrollbar_vertical"] = const_963;
         param1["scrollbar_slider_button_up"] = const_1209;
         param1["scrollbar_slider_button_down"] = const_1334;
         param1["scrollbar_slider_button_left"] = const_1306;
         param1["scrollbar_slider_button_right"] = const_1281;
         param1["scrollbar_slider_bar_horizontal"] = const_1333;
         param1["scrollbar_slider_bar_vertical"] = const_1297;
         param1["scrollbar_slider_track_horizontal"] = const_1244;
         param1["scrollbar_slider_track_vertical"] = const_1221;
         param1["scrollable_itemlist"] = const_1954;
         param1["scrollable_itemlist_vertical"] = const_548;
         param1["scrollable_itemlist_horizontal"] = const_1371;
         param1["selector"] = const_892;
         param1["selector_list"] = const_1016;
         param1["submenu"] = const_1345;
         param1["tab_button"] = const_910;
         param1["tab_container_button"] = const_1263;
         param1["tab_context"] = const_451;
         param1["tab_content"] = const_1370;
         param1["tab_selector"] = const_835;
         param1["text"] = const_782;
         param1["input"] = const_793;
         param1["toolbar"] = const_1903;
         param1["tooltip"] = const_409;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
