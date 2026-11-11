with Ada.Text_IO; use Ada.Text_IO;
with App_Config;
with Http_Server;

procedure Toko_Cookies is
begin

   -- Inisialisasi konfigurasi server
   App_Config.Initialize;

   -- Menjalankan server
   Http_Server.Start;

   Put_Line
      ("Server berjalan pada PORT: "
         & App_Config.Server_Host
         & "/"
         & Positive'Image (App_Config.Server_Port));

   -- Hentikan server dengan press Q
   Put_Line ("Tekan Q untuk menghentikan server.");
   
   Http_Server.Wait;
   Http_Server.Stop;

end Toko_Cookies;
