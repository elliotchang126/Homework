document.addEventListener("DOMContentLoaded", function() {
  // Your code here
  const canvasEl = document.getElementById("myCanvas");
    canvasEl.width = 500;
    canvasEl.height = 500;

    const ctx = canvasEl.getContext("2d");
    ctx.fillStyle = "red";
    ctx.fillRect(0, 0, 500, 500);


    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
    ctx.strokeStyle = "blue";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "green";
    ctx.fill();
});