with AWS.Response;
with AWS.Status;

package Routes is

   function Handle_Request
      (Request : AWS.Status.Data)
      return AWS.Response.Data;

end Routes;