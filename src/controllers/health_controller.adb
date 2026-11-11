package body Health_Controller is

   function Get_Health return AWS.Response.Data is
   begin
      return AWS.Response.Build 
         ("application/json",
          "{""status"":""healty""}");
   end Get_Health;

end Health_Controller;