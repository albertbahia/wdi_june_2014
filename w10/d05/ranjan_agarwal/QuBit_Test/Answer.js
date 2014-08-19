var $ = function (selector) {
  var elements = [];

  // var type = document.getElementsByTagName(selector);
  // elements.push(type);



    var selection = document.getElementsByTagName(selector);
    // var tag = selection.tagName;
    var inner = selection.innerHTML;
    // var classname = selector.className;
    console.log(classname);
    for(i = 0; i < selection.length; i += 1) {  
      var idname = selection[i].getAttribute('id');
      var classname = selection[i].getAttribute('class');
      if (classname && idname) {
        console.log(selection);
        classArray = classname.split(" ");
        console.log(classArray);
        for (j = 0; j < classArray.length; j++) {
          classEle = '.' + classArray[j];
          console.log(classEle);
          elements.push(classEle);
        }

        idArray = idname.split(" ");
        console.log(idArray);
        for (k = 0; k < idArray.length; k++) {
          idEle = '#' + idArray[k];
          console.log(idEle);
          elements.push(idEle);
        }

        console.log('class and id available');
        var idInfo = document.getElementById(idname);
        console.log(idInfo);
        var classInfo = document.getElementsByClassName(classname);
        console.log(classInfo);
        var text = selection[i];
        elements.push(idInfo && classInfo);
        // var classText = selection[i].classname;
        // var idText = selection[i].idname;
        // elements.push(idText && classText);
      } else if (classname) {
        classArray = classname.split(" ");
        console.log(classArray);
        for (j = 0; j < classArray.length; j++) {
          classEle = selection + '.' + classArray[j];
          console.log(classEle);
          elements.push(classEle);
        }


        // console.log(classname);
        // console.log('classname available');
        // var text = selection[i];
        // elements.push(text);
      } else if (idname) {
        idArray = idname.split(" ");
        console.log(idArray);
        for (k = 0; k < idArray.length; k++) {
          idEle = '#' + idArray[k];
          console.log(idEle);
          elements.push(idEle);
        }


        // console.log(idname);
        // console.log('id name available');
        // var text = selection[i];
        elements.push(text);
      } else {
        console.log('no attr');
        var text = selection[i];
        elements.push(text);
      }
      
    }










  // for (i = 0; i < elements.length; i++) {
  //   var text = elements[i];
  //   elements.push(text);
  // }

  // var array = elements.slice.call(HTMLcollection);

  // var newDiv = document.createElement("div");
  // var someClassDiv = document.body.appendChild(document.createElement('div'));
  // someClassDiv.classList.add('some_class');
  // elements.push(someClassDiv);
  
  // var image = document.createElement('img');


  // var emptyDiv = document.body.appendChild(document.createElement('div'));
  // elements.push(emptyDiv);
  ////////////////////
  // Your code here //
  ////////////////////

  return elements;
}