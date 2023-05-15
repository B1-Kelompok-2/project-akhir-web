// document.querySelector(".jsFilter").addEventListener("click", function () {
//   document.querySelector(".filter-menu").classList.toggle("active");
// });

document.querySelector(".grid").addEventListener("click", function () {
  document.querySelector(".list").classList.remove("active");
  document.querySelector(".grid").classList.add("active");
  document.querySelector(".products-area-wrapper").classList.add("gridView");
  document
    .querySelector(".products-area-wrapper")
    .classList.remove("tableView");
});

document.querySelector(".list").addEventListener("click", function () {
  document.querySelector(".list").classList.add("active");
  document.querySelector(".grid").classList.remove("active");
  document.querySelector(".products-area-wrapper").classList.remove("gridView");
  document.querySelector(".products-area-wrapper").classList.add("tableView");
});

var modeSwitch = document.querySelector('.mode-switch');
modeSwitch.addEventListener('click', function () {                     
  document.documentElement.classList.toggle('light');
  modeSwitch.classList.toggle('active');
});

// Memperoleh elemen-elemen yang dibutuhkan
let modal = document.querySelector('.modal');
let openModalBtn = document.getElementById('open-modal-btn');
let closeBtn = document.querySelector('.close');
let contactForm = document.getElementById('contact-form');

// Mengaktifkan modal saat tombol dibuka
openModalBtn.addEventListener('click', function() {
  modal.style.display = 'block';
});

// Menonaktifkan modal saat tombol close ditekan
closeBtn.addEventListener('click', function() {
  modal.style.display = 'none';
});

// Menonaktifkan modal saat user mengklik di luar area modal
window.addEventListener('click', function(event) {
  if (event.target == modal) {
    modal.style.display = 'none';
  }
});

// Mengirim formulir saat user mengklik tombol kirim
contactForm.addEventListener('submit', function(event) {
  event.preventDefault(); // Mencegah formulir di-submit

  // Lakukan pengiriman formulir di sini
});
