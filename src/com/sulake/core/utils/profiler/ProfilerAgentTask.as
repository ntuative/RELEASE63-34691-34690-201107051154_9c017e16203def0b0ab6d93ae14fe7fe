package com.sulake.core.utils.profiler
{
   import com.sulake.core.runtime.IDisposable;
   import flash.utils.getTimer;
   
   public class ProfilerAgentTask implements IDisposable
   {
       
      
      private var _name:String;
      
      private var var_1396:uint;
      
      private var var_1678:int;
      
      private var var_2165:int;
      
      private var var_2166:Number;
      
      private var var_17:String;
      
      private var var_864:Boolean;
      
      private var _disposed:Boolean = false;
      
      private var _children:Array;
      
      private var var_1714:uint;
      
      public function ProfilerAgentTask(param1:String, param2:String = "")
      {
         super();
         this._name = param1;
         this.var_1396 = 0;
         this.var_2166 = 0;
         this.var_864 = false;
         this._children = new Array();
         this.var_17 = param2;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
         }
      }
      
      public function start() : void
      {
         if(!this.var_864)
         {
            this.var_1714 = getTimer();
            this.var_864 = true;
         }
      }
      
      public function stop() : void
      {
         if(this.var_864)
         {
            this.var_2165 = getTimer() - this.var_1714;
            ++this.var_1396;
            this.var_1678 += this.var_2165;
            this.var_2166 = this.var_1678 / this.var_1396;
            this.var_864 = false;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get rounds() : uint
      {
         return this.var_1396;
      }
      
      public function get total() : int
      {
         return this.var_1678;
      }
      
      public function get latest() : int
      {
         return this.var_2165;
      }
      
      public function get average() : Number
      {
         return this.var_2166;
      }
      
      public function get caption() : String
      {
         return this.var_17;
      }
      
      public function set caption(param1:String) : void
      {
         this.var_17 = this.caption;
      }
      
      public function get running() : Boolean
      {
         return this.var_864;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get numSubTasks() : uint
      {
         return this._children.length;
      }
      
      public function addSubTask(param1:ProfilerAgentTask) : void
      {
         if(this.getSubTaskByName(param1.name) != null)
         {
            throw new Error("Component profiler task with name \"" + param1.name + "\" already exists!");
         }
         this._children.push(param1);
      }
      
      public function removeSubTask(param1:ProfilerAgentTask) : ProfilerAgentTask
      {
         var _loc2_:int = this._children.indexOf(param1);
         if(_loc2_ > -1)
         {
            this._children.splice(_loc2_,1);
         }
         return param1;
      }
      
      public function getSubTaskAt(param1:uint) : ProfilerAgentTask
      {
         return this._children[param1] as ProfilerAgentTask;
      }
      
      public function getSubTaskByName(param1:String) : ProfilerAgentTask
      {
         var _loc4_:* = null;
         var _loc2_:uint = this._children.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this._children[_loc3_++] as ProfilerAgentTask;
            if(_loc4_.name == param1)
            {
               return _loc4_;
            }
         }
         return null;
      }
   }
}
