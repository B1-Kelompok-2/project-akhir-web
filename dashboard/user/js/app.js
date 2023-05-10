let openShopping = document.querySelector('.shopping');
let closeShopping = document.querySelector('.closeShopping');
let list = document.querySelector('.list');
let listCard = document.querySelector('.listCard');
let body = document.querySelector('body');
let total = document.querySelector('.total');
let quantity = document.querySelector('.quantity');

// const mysql = require('mysql');

// const db = mysql.createConnection({
//     host : "localhost",
//     user : "root",
//     password : "",
//     database : "pa_web"
// })

// db.query("SELECT * FROM menu",(err, result) => {
//     const json = JSON.stringify(result);
//     console.log(json);
// })



openShopping.addEventListener('click', ()=>{
    body.classList.add('active');
})
closeShopping.addEventListener('click', ()=>{
    body.classList.remove('active');
})

// let products = [
//     {
//         id: 1,
//         name: 'PRODUCT NAME 1',
//         image: '1.PNG',
//         price: 120000
//     },
//     {
//         id: 2,
//         name: 'PRODUCT NAME 2',
//         image: '2.PNG',
//         price: 120000
//     },
//     {
//         id: 3,
//         name: 'PRODUCT NAME 3',
//         image: '3.PNG',
//         price: 220000
//     },
//     {
//         id: 4,
//         name: 'PRODUCT NAME 4',
//         image: '4.PNG',
//         price: 123000
//     },
//     {
//         id: 5,
//         name: 'PRODUCT NAME 5',
//         image: '5.PNG',
//         price: 320000
//     },
//     {
//         id: 6,
//         name: 'PRODUCT NAME 6',
//         image: '6.PNG',
//         price: 120000
//     },
// ];
// function initApp(){
    //     products.forEach((value, key) =>{
        //         let newDiv = document.createElement('div');
        //         newDiv.classList.add('sembunyi');
        //         newDiv.innerHTML = `
        //             <img src="image/${value.image}">
        //             <div class="title">${value.name}</div>
        //             <div class="price">${value.price.toLocaleString()}</div>
        //             <button onclick="addToCard(${key})">Add To Cart</button>`;
        //          list.appendChild(newDiv);
        //     })
        // }
        // initApp();
let listCards = [];
let sudah_ada = [];
function addToCard(key){
    let gambar = document.getElementsByClassName("image");
    let judul = document.getElementsByClassName("title");
    let harga = document.getElementsByClassName("price");
    // let tombol = document.getElementsByClassName("tombol");

    let image = gambar[key].src; // Mengambil nilai HTML dari elemen title
    let title = judul[key].innerHTML; // Mengambil nilai HTML dari elemen title
    let price = parseInt(harga[key].innerHTML); // Mengambil nilai HTML dari elemen title
    // title = JSON.parse(JSON.stringify(price));
    listCards.push({
        image : image,
        name : title,
        price : price
    });

    
    // for (let i = 0; i < judul.length; i++) {
    //     let image = gambar[key].src; // Mengambil nilai HTML dari elemen title
    //     let title = judul[key].innerHTML; // Mengambil nilai HTML dari elemen title
    //     let price = parseInt(harga[key].innerHTML); // Mengambil nilai HTML dari elemen title
    //     // title = JSON.parse(JSON.stringify(price));
    //     listCards.push({
    //         image : image,
    //         name : title,
    //         price : price
    //     }); 
    //     // Menambahkan nilai title ke dalam array listCards
    //     // console.log(title); // Menampilkan nilai ke console
    // }
        // title.quantity = 1;
        // console.log(listCards[0]['name']);
        reloadCard();
}

function reloadCard(){ 
    let count = 0; // hitung kuantitas
    // count = count + listCards.length; 
    // listCard.innerHTML = '';
    let totalPrice = 0; //hitung total
    // console.log(listCards.length);
    for (let i = 0; i < listCards.length; i++) {        
        let image = listCards[i]["image"];
        let name = listCards[i]["name"];
        let price = listCards[i]["price"];
        totalPrice = totalPrice + listCards[i]['price'];
        if(listCards != null){
            if (sudah_ada.includes(name)) {
                console.log("sudah gan");
            }
            else{
                count = 1;
                sudah_ada.push(name);
                
                let newDiv = document.createElement('li');
                newDiv.innerHTML = `
                    <div><img src="${image}"/></div>
                    <div>${name}</div>
                    <div>Rp.${price}</div>
                    <div>
                        <button>-</button>
                        <div class="count">${count}</div>
                        <button>+</button>
                    </div>          
                    `;
                listCard.appendChild(newDiv);
            }
        }
    }
    // console.log(count);
    listCards = [];
    total.innerText = totalPrice;

}

function changeQuantity(key, quantity){
    if(quantity == 0){
        delete listCards[key];
    }else{
        listCards[key].quantity = quantity;
        listCards[key].price = quantity * products[key].price;
    }
    reloadCard();
}