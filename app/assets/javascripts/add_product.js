// app/assets/javascripts/add_product.js

document.addEventListener("turbolinks:load", function() {
    const addProductForm = document.getElementById('add_product_form');
  
    addProductForm.addEventListener('ajax:success', function(event) {
      const productsContainer = document.getElementById('products');
      const newSaleItem = document.createElement('div');
      newSaleItem.classList.add('form-group');
      newSaleItem.innerHTML = event.detail[0];
  
      productsContainer.appendChild(newSaleItem);
    });
  });