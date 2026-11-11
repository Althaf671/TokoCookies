package App_Config is

   -- port server
   Server_Port : Positive;

   -- host server
   Server_Host : String (1 .. 9);

   -- init config
   procedure Initialize;

end App_Config;