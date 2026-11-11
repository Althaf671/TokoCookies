package Cookie is

   type Flavors is
      (Vanilla, Chocolates, Strawberry,
       Mapple, Blueberry, Tiramisu);

   type Cookie_Model is record
      Id       : Positive;
      Name     : String (1 .. 6);
      Price    : Natural range 1 .. 100000;
      Stock    : Natural range 1 .. 10;
      Flavor   : Flavors; 
   end record;

end Cookie;