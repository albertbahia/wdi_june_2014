

doesItWorkNamed();
doesItWorkUnamed();

//ENTIRE NAMED FUNTCION GETS HOISTED TO TOP
function doesItWorkNamed() {
  console.log("It works bruh.(named)");
};

//UNAMED DOES NOT GET HOISTED
var doesItWorkUnamed = function() {
  console.log("It works bruh.(unamed)")
};
