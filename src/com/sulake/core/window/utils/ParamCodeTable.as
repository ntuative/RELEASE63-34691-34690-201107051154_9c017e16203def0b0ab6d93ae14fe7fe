package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function method_2(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["TutorialMainView"] = const_195;
         param1["bound_to_parent_rect"] = const_104;
         param1["child_window"] = const_1361;
         param1["embedded_controller"] = const_1328;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_767;
         param1["mouse_dragging_target"] = const_297;
         param1["mouse_dragging_trigger"] = const_433;
         param1["mouse_scaling_target"] = const_383;
         param1["mouse_scaling_trigger"] = const_550;
         param1["horizontal_mouse_scaling_trigger"] = const_293;
         param1["vertical_mouse_scaling_trigger"] = const_281;
         param1["observe_parent_input_events"] = const_1375;
         param1["optimize_region_to_layout_size"] = const_555;
         param1["parent_window"] = const_1179;
         param1["relative_horizontal_scale_center"] = const_214;
         param1["relative_horizontal_scale_fixed"] = const_179;
         param1["relative_horizontal_scale_move"] = const_443;
         param1["relative_horizontal_scale_strech"] = const_434;
         param1["relative_scale_center"] = const_1259;
         param1["relative_scale_fixed"] = const_761;
         param1["relative_scale_move"] = const_1247;
         param1["relative_scale_strech"] = const_1228;
         param1["relative_vertical_scale_center"] = const_205;
         param1["relative_vertical_scale_fixed"] = const_144;
         param1["relative_vertical_scale_move"] = const_248;
         param1["relative_vertical_scale_strech"] = const_361;
         param1["on_resize_align_left"] = const_991;
         param1["on_resize_align_right"] = const_533;
         param1["on_resize_align_center"] = const_503;
         param1["on_resize_align_top"] = const_830;
         param1["on_resize_align_bottom"] = const_495;
         param1["on_resize_align_middle"] = const_592;
         param1["on_accommodate_align_left"] = const_1211;
         param1["on_accommodate_align_right"] = const_531;
         param1["on_accommodate_align_center"] = const_743;
         param1["on_accommodate_align_top"] = const_1315;
         param1["on_accommodate_align_bottom"] = const_506;
         param1["on_accommodate_align_middle"] = const_891;
         param1["route_input_events_to_parent"] = const_619;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1175;
         param1["scalable_with_mouse"] = const_1248;
         param1["reflect_horizontal_resize_to_parent"] = const_492;
         param1["reflect_vertical_resize_to_parent"] = const_627;
         param1["reflect_resize_to_parent"] = const_347;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1203;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
