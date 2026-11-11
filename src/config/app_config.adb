package body App_Config is

   procedure Initialize is
   begin 
      Server_Port := 8080;
      Server_Host := "127.0.0.1";
   end Initialize;

end App_Config;