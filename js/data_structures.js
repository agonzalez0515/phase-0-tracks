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

var newcar = new Car(1990, false, "yellow")
console.log(newcar)
newcar.repair()

var newcar2 = new Car(2010, true, "white")
console.log(newcar2)
var newcar3 = new Car(2000, false, "blue")
console.log(newcar3)
newcar3.repair()
console.log(newcar3.color)
console.log(newcar3.year)
	