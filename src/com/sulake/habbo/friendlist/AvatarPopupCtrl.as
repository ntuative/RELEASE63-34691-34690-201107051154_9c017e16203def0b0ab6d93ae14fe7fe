package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class AvatarPopupCtrl extends PopupCtrl
   {
       
      
      private var var_809:Boolean;
      
      private var var_1918:String;
      
      private var var_2627:String;
      
      private var var_2626:String;
      
      private var var_1839:String;
      
      private var var_1838:String;
      
      public function AvatarPopupCtrl(param1:HabboFriendList)
      {
         super(param1,5,-5,"avatar_popup");
      }
      
      public function setData(param1:Boolean, param2:String, param3:String, param4:String, param5:String, param6:String = "") : void
      {
         this.var_809 = param1;
         this.var_1918 = param2;
         this.var_2627 = param3;
         this.var_2626 = param4;
         this.var_1838 = param5;
         this.var_1839 = param6;
      }
      
      override public function refreshContent(param1:IWindowContainer) : void
      {
         Util.hideChildren(param1);
         if(this.var_1839 != "")
         {
            friendList.refreshText(param1,"name_text_online",this.var_809,this.var_1839);
         }
         else
         {
            friendList.refreshText(param1,"name_text_online",this.var_809,this.var_1918);
         }
         friendList.refreshText(param1,"name_text_offline",!this.var_809,this.var_1918);
         friendList.refreshText(param1,"motto_text",this.var_809,this.var_2627);
         friendList.refreshButton(param1,"offline",!this.var_809,null,0);
         if(this.var_809)
         {
            this.refreshFigure(param1,this.var_2626);
            param1.findChildByName("online_text").visible = true;
         }
         else
         {
            param1.findChildByName("last_access_text").visible = true;
            friendList.registerParameter("friendlist.avatarpopup.lastaccess","last_access",this.var_1838 == null ? "" : this.var_1838);
         }
         param1.height = Util.getLowestPoint(param1) + 10;
      }
      
      private function refreshFigure(param1:IWindowContainer, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.getChildByName(HabboFriendList.const_190) as IBitmapWrapperWindow;
         if(_loc3_ == null)
         {
            return;
         }
         if(param2 == null || param2 == "")
         {
            _loc3_.visible = false;
         }
         else
         {
            _loc3_.bitmap = friendList.getAvatarFaceBitmap(param2);
            if(_loc3_.bitmap == null)
            {
               return;
            }
            _loc3_.width = _loc3_.bitmap.width;
            _loc3_.height = _loc3_.bitmap.height;
            _loc3_.visible = true;
         }
      }
   }
}
