holder =[]
holderTotal = 0;

for (var fibSeq=0;fibSeq<=10;fibSeq++){

    if (parseInt(Math.sqrt(5*(Math.pow(fibSeq, 2))+4)) == Math.sqrt(5*(Math.pow(fibSeq, 2))+4) ||
        parseInt(Math.sqrt(5*(Math.pow(fibSeq, 2))-4)) == Math.sqrt(5*(Math.pow(fibSeq, 2))-4)){
          holder.push(fibSeq);
        }
}

for (var holderInd=0;holderInd<holder.length;holderInd++){

      holderTotal += holder[holderInd]
}

console.log(holderTotal);
