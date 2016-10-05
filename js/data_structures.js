var colors = ["red", "green", "blue", "pink"]
var names = ["spot", "ed", "winner", "bob"]

colors.push("white")
names.push("carl")


horses = {};

for (var i = 0; i < names.length; i++) {
	horses[names[i]] = colors[i];
	
}

console.log(horses);

///////

//different properties of various data types
function Car(year, isHybrid, color) {

	console.log ("Our new car")

		this.year = year;
		this.isHybrid = isHybrid;
		this.color = color;

		this.repair = function() {
		 if (year < 2000){
		 	console.log("go get a repair!");
		 } 
		 else {
		 	console.log("no repair needed");
		 }
		}

}

x
	