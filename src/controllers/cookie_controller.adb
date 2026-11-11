with Ada;
with Ada.Streams;
with Cookie;

package body Cookie_Controller is

   function Get_Cookie return AWS.Response.Data is
      Item : Cookie.Cookie_Model :=
         (Id      => 1,
          Name    => "Althaf",
          Price   => 25000,
          Stock   => 2,
          Flavor  => Cookie.Chocolates);

      Body_Content : constant String :=
         "{""id"":1," &
         """name"":""Althaf""," &
         """price"":25000," &
         """stock"":2," &
         """flavor"":""Chocolates""}";

      Body_Stream : Ada.Streams.Stream_Element_Array
         (1 .. Body_Content'Length);
   begin
      for I in Body_Content'Range loop
         Body_Stream (Ada.Streams.Stream_Element_Offset (I)) :=
            Ada.Streams.Stream_Element
               (Character'Pos (Body_Content (I)));
      end loop;

      return AWS.Response.Build 
        ("application/json", 
         Body_Stream);
   end Get_Cookie;

end Cookie_Controller;