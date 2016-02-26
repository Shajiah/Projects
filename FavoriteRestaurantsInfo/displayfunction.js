var pictures = new Array("pizzaluce.gif", "NC.gif", "redlobster.gif", "sushi.gif", "filfillah.gif");
var text = new Array("Pizza Luce", "Noodles & Company", "Red Lobster", "Kyoto", "Filfillah");

var first = false;
var second = false;
var third = false;
var fourth = false;
var fifth = false;


function display(action){
	switch(action){
		case 1:
			//Has it been rendered?
			if(first == true)
			{
				var remove = document.getElementById("one");
				remove.parentNode.removeChild(remove);
				first = false;
				break;
			}
			//Access button, create image
			var button = document.getElementById("1st");
			img = document.createElement("img");
			img.id = "img";
			img.src = pictures[0];
			img.title = text[0];
			
			//Create div
			var mydiv = document.createElement('div');
			mydiv.id = "one";
			mydiv.title = text[0];
			mydiv.classname = "divs";
			mydiv.onclick = function(){display(1);}
			
			//Adding it to the DOM, update global variables
			mydiv.appendChild(img);
			button.parentNode.appendChild(mydiv);
			first = true;
			break;
		case 2:
			if(second == true){
				var remove = document.getElementById("two");
				remove.parentNode.removeChild(remove);
				second = false;
				break;
			}
			var button = document.getElementById("2nd");
			pic = document.createElement("pic");
			pic.id = "pic";
			pic.src = pictures[1];
			pic.title = text[1];
			
			var mydiv = document.createElement('div');
			mydiv.id = "two";
			mydiv.title = text[1];
			mydiv.classname = "divs";
			mydiv.onclick = function(){display(2);}
			
			mydiv.appendChild(img);
			button.parentNode.appendChild(mydiv);
			second = true;
			break;
		case 3:
			if(third == true){
				var remove = document.getElementById("three");
				remove.parentNode.removeChild(remove);
				third = false;
				break;
			}
			var button = document.getElementById("3rd");
			img = document.createElement("img");
			img.id = "img";
			img.src = pictures[2];
			img.title = text[2];
			
			var mydiv = document.createElement('div');
			mydiv.id = "three";
			mydiv.title = text[2];
			mydiv.classname = "divs";
			mydiv.onclick = function(){display(3);}
			
			mydiv.appendChild(img);
			button.parentNode.appendChild(mydiv);
			third = true;
			break;
		case 4:
			if(fourth == true){
				var remove = document.getElementById("four");
				remove.parentNode.removeChild(remove);
				fourth = false;
				break;
			}
			var button = document.getElementById("4th");
			img = document.createElement("img");
			img.id = "img";
			img.src = pictures[3];
			img.title = text[3];
		
			var mydiv = document.createElement('div');
			mydiv.id = "four";
			mydiv.title = text[3];
			mydiv.classname = "divs";
			mydiv.onclick = function(){display(4);}
			
			mydiv.appendChild(img);
			button.parentNode.appendChild(mydiv);
			fourth = true;
			break;
		case 5:
			if(fifth == true){
				var remove = document.getElementById("five");
				remove.parentNode.removeChild(remove);
				fifth = false;
				break;
			}
			var button = document.getElementById("5th");
			img = document.createElement("img");
			img.id = "img";
			img.src = pictures[4];
			img.title = text[4];
			
			var mydiv = document.createElement('div');
			mydiv.id = "five";
			mydiv.title = text[4];
			mydiv.classname = "divs";
			mydiv.onclick = function(){display(5);}
			
			mydiv.appendChild(img);
			button.parentNode.appendChild(mydiv);
			fifth = true;
			break;
		default:
			break;
	}
}
