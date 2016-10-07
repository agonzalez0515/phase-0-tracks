//Release 0
//write a function that takes an array and returns the longest 
//word or phrase in the array"

//PSEUDOCODE
//create an empty string to store the word that you are going to compare
//loop through the array
//for each object in the array, count the length
//compare the length to the word in the string
//if the word in the string is shorter than the word in the array the new word will replace it

function biggestword(words){
	var newword = "";
		
  for (var i = 0; i < words.length; i++){
		if (words[i].length > newword.length) {
			newword = words[i];
		}
		else (words[i].length < newword.length);{
			newword = newword;
		}
	} 
	console.log(newword);
}


//Release 1
//PSEUDOCODE
//



function keymatch (array){


  if (array[0].name == array[1].name){
			console.log("true");
	}
	else if (array[0].age == array[1].age) {
		console.log("true");
	}
	else {
		console.log("false");
	} 
}


var example = [{name: "Steven", age: 6},{name: "Steven", age: 54}];

keymatch(example);



//Release2
//PSEUDOCODE
//make an array of the alphabet
//generate a random number using 1-10 range. this is the length of the word.
//loop through the alphabet that many times and use another random number (from 1-26) as the index of the letter you want.
//push that letter into a new array
//join the array to make a string
//push string into a word array
//loop through the whole function the number of times the paramater was
//print/return? final word array with all the words



RandomLength = Math.floor(Math.random() * 10) + 1; //random number to determine length of random word
console.log(RandomLength);
var RandomLetters = [];

for (var i = 0; i < RandomLength; i++){
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	RandomLetters.push(alphabet[Math.floor(Math.random() * 26) + 1]);
	}
	RandomLetters.join("");
	console.log(RandomLetters)


//DRIVER CODE 

//Release 0
biggestword(["lon", "long", "longest", "longer"]);
biggestword(["yo", "hello", "heyo"]);


