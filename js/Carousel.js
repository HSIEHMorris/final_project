let slideIdx = 1;
let autoplay;
function showSlides(num){
     slideIdx = num;
     let slides = document.getElementsByClassName('slide');
     let dots = document.getElementsByClassName('dot');
     if(slideIdx <1){
          slideIdx= slides.length;
     }
     else if(slideIdx > slides.length){
          slideIdx = 1;
     }
     for (let i=0; i<slides.length; i++){
          slides[i].className = slides[i].className.replace(' show','');
     }
     slides[slideIdx-1].className = slides[slideIdx-1].className + ' show';

     setAutoplay();
}
function changeSlide(ctrl){
     showSlides(slideIdx + ctrl);
}

function setAutoplay(){
     if(autoplay != undefined){
          clearInterval(autoplay);
     }

     autoplay=setInterval(function(){
          changeSlide(1)
     }, 3000);
}

window.onload =function(){
     showSlides(1);

}
// 获取鼠标图片元素
let cursor = document.getElementById("myCursor");

// 监听鼠标移动事件
window.addEventListener("mousemove", function(e) {
    // 获取鼠标的位置
    let x = e.clientX;
    let y = e.clientY;

    // 设置图片的位置
    cursor.style.left = (x - 25) + "px"; // 为了让鼠标图片的中心与鼠标对齐，需要减去图片宽度的一半
    cursor.style.top = (y - 25) + "px"; // 同上，减去图片高度的一半
});
