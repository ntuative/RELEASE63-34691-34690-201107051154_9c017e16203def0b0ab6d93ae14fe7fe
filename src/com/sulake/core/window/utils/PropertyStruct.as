package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_174:String = "hex";
      
      public static const const_38:String = "int";
      
      public static const const_305:String = "uint";
      
      public static const const_132:String = "Number";
      
      public static const const_37:String = "Boolean";
      
      public static const const_51:String = "String";
      
      public static const const_306:String = "Point";
      
      public static const const_264:String = "Rectangle";
      
      public static const const_156:String = "Array";
      
      public static const const_314:String = "Map";
       
      
      private var var_656:String;
      
      private var var_204:Object;
      
      private var _type:String;
      
      private var var_2592:Boolean;
      
      private var var_3074:Boolean;
      
      private var var_2591:Array;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean, param5:Array = null)
      {
         super();
         this.var_656 = param1;
         this.var_204 = param2;
         this._type = param3;
         this.var_2592 = param4;
         this.var_3074 = param3 == const_314 || param3 == const_156 || param3 == const_306 || param3 == const_264;
         this.var_2591 = param5;
      }
      
      public function get key() : String
      {
         return this.var_656;
      }
      
      public function get value() : Object
      {
         return this.var_204;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get valid() : Boolean
      {
         return this.var_2592;
      }
      
      public function get range() : Array
      {
         return this.var_2591;
      }
      
      public function toString() : String
      {
         switch(this._type)
         {
            case const_174:
               return "0x" + uint(this.var_204).toString(16);
            case const_37:
               return Boolean(this.var_204) == true ? "true" : "ICaption";
            case const_306:
               return "Point(" + Point(this.var_204).x + ", " + Point(this.var_204).y + ")";
            case const_264:
               return "Rectangle(" + Rectangle(this.var_204).x + ", " + Rectangle(this.var_204).y + ", " + Rectangle(this.var_204).width + ", " + Rectangle(this.var_204).height + ")";
            default:
               return String(this.value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(this._type)
         {
            case const_314:
               _loc3_ = this.var_204 as Map;
               _loc1_ = "<var key=\"" + this.var_656 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_156:
               _loc4_ = this.var_204 as Array;
               _loc1_ = "<var key=\"" + this.var_656 + "\">\r<value>\r<" + this._type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_306:
               _loc5_ = this.var_204 as Point;
               _loc1_ = "<var key=\"" + this.var_656 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_264:
               _loc6_ = this.var_204 as Rectangle;
               _loc1_ = "<var key=\"" + this.var_656 + "\">\r<value>\r<" + this._type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_38 + "\" />\r";
               _loc1_ += "</" + this._type + ">\r</value>\r</var>";
               break;
            case const_174:
               _loc1_ = "<var key=\"" + this.var_656 + "\" value=\"" + "0x" + uint(this.var_204).toString(16) + "\" type=\"" + this._type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + this.var_656 + "\" value=\"" + this.var_204 + "\" type=\"" + this._type + "\" />";
         }
         return _loc1_;
      }
   }
}
