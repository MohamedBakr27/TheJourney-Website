let menu = document.querySelector("#menu-btn");
let navbar = document.querySelector("#navbar");
let subMenu = document.getElementById("subMenu");

//links remove
document.onclick = function (e) {
  if (e.target.id !== "menu-btn" && e.target.id !== "subMenu") {
    menu.classList.remove("fa-times");
    navbar.classList.remove("active");
  }
};

//guest icon open (in line 39 in html & 172 in css)
function toggleMenu() {
  subMenu.classList.toggle("open");
}

//links open
menu.onclick = () => {
  menu.classList.toggle("fa-times");
  navbar.classList.toggle("active");
};

var swiper = new Swiper(".home-slider", {
  loop: true,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});

var swiper = new Swiper(".reviews-slider", {
  loop: true,
  spaceBetween: 20,
  autoHeight: true,
  grabCursor: true,
  breakpoints: {
    640: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1024: {
      slidesPerView: 3,
    },
  },
});
