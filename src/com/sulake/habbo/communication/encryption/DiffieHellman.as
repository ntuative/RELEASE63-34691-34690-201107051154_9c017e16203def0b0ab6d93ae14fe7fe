package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_961:BigInteger;
      
      private var var_2654:BigInteger;
      
      private var var_1936:BigInteger;
      
      private var var_2653:BigInteger;
      
      private var var_1538:BigInteger;
      
      private var var_1935:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1538 = param1;
         this.var_1935 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1538.toString() + ",generator: " + this.var_1935.toString() + ",secret: " + param1);
         this.var_961 = new BigInteger();
         this.var_961.fromRadix(param1,param2);
         this.var_2654 = this.var_1935.modPow(this.var_961,this.var_1538);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1936 = new BigInteger();
         this.var_1936.fromRadix(param1,param2);
         this.var_2653 = this.var_1936.modPow(this.var_961,this.var_1538);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2654.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2653.toRadix(param1);
      }
   }
}
