array=[1,2,3,5,8,13,188,66]

for(var arrInd=0;arrInd<array.length;arrInd++){

  if (parseInt(Math.sqrt(5*(Math.pow(array[arrInd], 2))+4)) == Math.sqrt(5*(Math.pow(array[arrInd], 2))+4) ||
  parseInt(Math.sqrt(5*(Math.pow(array[arrInd], 2))-4)) == Math.sqrt(5*(Math.pow(array[arrInd], 2))-4)){
    console.log(array[arrInd] + "is a Fibonacci number!");
  }
}


//Math.sqrt(5*(num**2)+4).to_i == Math.sqrt(5*(num**2)+4) || Math.sqrt(5*(num**2)-4).to_i == Math.sqrt(5*(num**2)-4)
