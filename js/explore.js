//Pseudocode for reverse string javascript

//for each letter in the string, pick up the last one and
//then print it until you have gone through the whole string length
//store each printed letter as a new string
//join the strings to equal one word

//^ this didn't work^

//pseudocode #2
//go through each letter in the word until the string ends, this is the loop
//pick up the first letter
//store the letter in a new empty string
//pick up the next letter and add it to the new string
//add the previous string to it that already has the first iteration
//keep picking up the next letter and add the previous built string to it

//first time we go through and pick up the h and add it to reverse
//then reverse = h
//pick up e, reverse = e +h = eh
//pick up l, reverse = l +eh = leh
//pick up l, reverse = l +leh = lleh
//pick up o, reverse = o +lleh = olleh


function reverse(string) {
	reverse = "";
	for (var i = 0; i < string.length; i ++){
		reverse = string[i] + reverse;
	}
	return reverse;
}

console.log(reverse("hello"));


if (5 == 5) {
console.log("Your word is " + reverse +".");
} 
else {
console.log("Sorry, it doesn't work");
}

