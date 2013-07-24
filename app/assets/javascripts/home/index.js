var canvas;
var context;
var t = 0;

window.onload = function()
{
	canvas = document.getElementById("screen");
	context = canvas.getContext("2d");

	setInterval(update,10);
}

function update()
{
	t += 0.01;
	render();
}

function render()
{
	canvas.width = canvas.width;

	context.strokeStyle = "#555555";
	context.lineWidth = 5;

	context.beginPath();
	context.arc(canvas.width/2, canvas.height/2, canvas.width/3, t/2, t/2+4, false);
	context.stroke();

	context.beginPath();
	context.arc(canvas.width/2, canvas.height/2, canvas.width/4, -t, -(t+3), false);
	context.stroke();

	context.beginPath();
	context.arc(canvas.width/2, canvas.height/2, canvas.width/5, t*2, t*2+4, false);
	context.stroke();

	context.lineWidth = 2;
	context.fillStyle = "#00BFFF";
	context.strokeStyle = "#AAAAAA";

	context.beginPath();
	context.arc(canvas.width/2, canvas.height/2, canvas.width/8, 0, 2*Math.PI, false);
	context.fill();
	context.stroke();
}
