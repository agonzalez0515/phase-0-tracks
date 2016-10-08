//Release 0
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
//function takes 2 parameters
//each parameter is going to be an object with key,value pairs
//iterate through the first object
//check if any of the pairs in the second object match the first with an equals statement
//if there is a match, return true



function pairMatches(object1, object2){
  var statement = false;
	for (var key in object1){
		if (object2[key] === object1[key])
			statement = true;
	}
	return statement;
}



//Release 2
//PSEUDOCODE
//generate a random number using 1-10 range. this is the length of the word.
//make an array of the alphabet
//loop through the alphabet that many times and use another random number (from 1-26 since there are 26 letters in the alphabet)
//use that 1..26 random number as the index of the letter you want.
//push that letter into a new array
//join the array to make a string
//push string into a word array
//loop through the whole function the number of times the parameter was
//print/return final word array with all the words

function RandomWords(int){
	var WordCollection = [];
	for (var x = 0; x < int; x++){
	
		var RandomLength = Math.floor(Math.random() * 10) + 1; //random number to determine length of random word
		var RandomLetters = [];
	
		for (var i = 0; i < RandomLength; i++){
			var alphabet = "abcdefghijklmnopqrstuvwxyz";
			RandomLetters.push(alphabet[Math.floor(Math.random() * 26) + 1]);//random letter from the alphabet
			}
			RandomLetters = RandomLetters.join("");//create strings and add to array
			
	
	WordCollection.push(RandomLetters);	
	}
	console.log(WordCollection);
	return WordCollection;
}




//Driver Code for Release 0
biggestword(["lon", "long", "longest", "longer"]);


//Driver Code for Release 1
var user1 = {name: "Steven", age: 44, location: "ny", height: "no"};
var user2 = {name: "Steven", age: 45, location: "la", height: "yes"};
console.log(pairMatches(user1, user2));
var user1 = {name: "Mike", age: 44, location: "ny", height: "no"};
var user2 = {name: "Steven", age: 45, location: "la", height: "yes"};
console.log(pairMatches(user1, user2));

//Driver Code for Release 2
times = 10
for (var m = 0; m < times; m++){
	biggestword(RandomWords(8))
}

