package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2213:int = 0;
      
      public static const const_2020:int = 1;
      
      public static const const_1897:int = 2;
      
      public static const const_2237:int = 3;
      
      public static const const_2223:int = 4;
      
      public static const const_2305:int = 5;
      
      public static const const_1930:int = 10;
      
      public static const const_2183:int = 11;
      
      public static const const_2220:int = 12;
      
      public static const const_2172:int = 13;
      
      public static const const_2289:int = 16;
      
      public static const const_2187:int = 17;
      
      public static const const_2197:int = 18;
      
      public static const const_2157:int = 19;
      
      public static const const_2194:int = 20;
      
      public static const const_2175:int = 22;
      
      public static const const_2242:int = 23;
      
      public static const const_2239:int = 24;
      
      public static const const_2259:int = 25;
      
      public static const const_2210:int = 26;
      
      public static const const_2181:int = 27;
      
      public static const const_2287:int = 28;
      
      public static const const_2166:int = 29;
      
      public static const const_2291:int = 100;
      
      public static const const_2231:int = 101;
      
      public static const const_2207:int = 102;
      
      public static const const_2271:int = 103;
      
      public static const const_2327:int = 104;
      
      public static const const_2141:int = 105;
      
      public static const const_2298:int = 106;
      
      public static const const_2330:int = 107;
      
      public static const const_2177:int = 108;
      
      public static const const_2300:int = 109;
      
      public static const const_2303:int = 110;
      
      public static const const_2193:int = 111;
      
      public static const const_2263:int = 112;
      
      public static const const_2309:int = 113;
      
      public static const const_2285:int = 114;
      
      public static const const_2318:int = 115;
      
      public static const const_2162:int = 116;
      
      public static const const_2206:int = 117;
      
      public static const const_2127:int = 118;
      
      public static const const_2313:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_9 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_2020:
            case const_1930:
               return "banned";
            case const_1897:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
