function bouncer(age){
	if (age < 21){
		return false;
	}else{
		return true;
	}
}

console.log(bouncer(20));
console.log(bouncer(40));