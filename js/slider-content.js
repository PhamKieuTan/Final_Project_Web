var arrImages = [];
var count = 0;

function load_Images() {
    for (var i = 1; i < 8; i++) {
        arrImages[i] = new Image();
        arrImages[i].src = "./img-slider/" + i + ".jpg";
    }
}

function Slider() {
    count++;
    if (count > 7) {
        count = 0;
    }
    document.getElementById("Images").src = arrImages[count].src;
}

var Slider_360 = setInterval(function() { Slider() }, 2000);