with App_Config;
with AWS;
with AWS.Response;
with AWS.Server;
with AWS.Status;
with Routes;

package body Http_Server is

   -- Instance server 
   Web_Server : AWS.Server.HTTP;

   -- Prosedur mulai server
   procedure Start is
   begin
      AWS.Server.Start 
         (Web_Server, 
           Name     => "Toko Cookies",
           Callback => Routes.Handle_Request'Access,
           Host     => App_Config.Server_Host,
           Port     => App_Config.Server_Port);
   end Start;

   -- Prosedur keep alive
   procedure Wait is
   begin
      AWS.Server.Wait (AWS.Server.Q_Key_Pressed);
   end Wait;

   -- Prosedur stop server
   procedure Stop is
   begin
      AWS.Server.Shutdown (Web_Server);
   end Stop;

end Http_Server;