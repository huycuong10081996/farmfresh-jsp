"use strict";

//cart
const cartItem = document.querySelector("#clickCart");
const cartContainer = document.querySelector("#cartContainer");
const cartClick = () => {
  if (cartContainer.classList.contains("open")) {
    cartContainer.classList.remove("open");
  } else {
    cartContainer.classList.toggle("open");
  }
}
if (cartItem && cartContainer) {
  cartItem.addEventListener("click", e => {
    e.preventDefault();
    cartClick();
  })
}

const viewCartButtonHeader = document.querySelector('#viewCartHeader');
const checkoutButtonHeader = document.querySelector('#checkoutButtonHeader');
viewCartButtonHeader.addEventListener('click', (e) => {
  window.location.href = 'cart-page.jsp';
})
checkoutButtonHeader.addEventListener('click', (e) => {
  window.location.href = 'checkout.jsp';
})