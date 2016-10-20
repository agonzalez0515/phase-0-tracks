console.log("The script is running!");

var els = document.getElementById("roster");

function createBorder(event) {
	console.log("Border changing!");
	event.target.style.border = "red 2px solid";
}

els.addEventListener("click", createBorder);


