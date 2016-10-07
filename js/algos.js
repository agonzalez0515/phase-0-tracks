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
//Pseudocode
//



//DRIVER CODE 

//Release 0
biggestword(["lon", "long", "longest", "longer"]);
biggestword(["yo", "hello", "heyo"]);


