document.addEventListener("DOMContentLoaded", function() {
  // Your code here
  const canvas = document.getElementById("myCanvas");
  canvas.height = 500;
  canvas.width = 500;
  const ctx = canvas.getContext("2d");
  
  ctx.fillStyle = "red";
  // ctx.fillRect = (0, 0, 250, 250);
  ctx.fillRect(130, 190, 40, 60);


  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();

});