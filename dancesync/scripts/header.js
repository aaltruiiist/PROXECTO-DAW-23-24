const $d = document,
  $hamburger = $d.querySelector(".hamburger"),
  $menu = $d.querySelector(".nav-menu"),
  $header = $d.querySelector("header"),
  $body = $d.querySelector("body"),
  $links = $d.querySelectorAll(".nav-link");

$hamburger.addEventListener("click", mobileMenu);

function mobileMenu() {
  $hamburger.classList.toggle("active");
  $menu.classList.toggle("active");
}

$links.forEach((link) =>
  link.addEventListener("click", (event) => {
    event.preventDefault();
    const target = event.target.getAttribute('href');
    $hamburger.classList.remove("active");
    $menu.classList.remove("active");
    if (target) {
      setTimeout(() => {
        window.location.href = target;
      }, 300);
    }
  })
);

const scrollInicial = $header.getBoundingClientRect().top;

window.onscroll = () => {
  const scroll = $body.getBoundingClientRect().top;
  if (scroll != scrollInicial) {
    $header.classList.add("activa");
  } else if (scroll == 0) {
    $header.classList.remove("activa");
  }
};


const links = Array.from($d.querySelectorAll('.nav-item'));
let navLinks = links.slice(0,-1)

navLinks.forEach((link) => {
  link.addEventListener('click', (e) => {
    navLinks.forEach((link) => {
      link.classList.remove('nav-item--seleccionado');
    });
    link.classList.add('nav-item--seleccionado');
  });
});
