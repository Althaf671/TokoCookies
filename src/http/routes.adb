with Cookie_Controller;
with Health_Controller;

package body Routes is

   function Handle_Request
      (Request : AWS.Status.Data)
      return AWS.Response.Data
   is
   begin
      if AWS.Status.URI (Request) = "/health" then
         return Health_Controller.Get_Health;

      elsif AWS.Status.URI (Request) = "/cookie" then
         return Cookie_Controller.Get_Cookie;

      else 
         return AWS.Response.Build
            ("text/plain", "Not Found");
            
      end if;
   end Handle_Request;

end Routes;