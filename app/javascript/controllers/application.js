import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

document.addEventListener("turbolinks:load", function() {
    const addProductLink = document.getElementById('add_product');
    const productsContainer = document.getElementById('products');
  
    addProductLink.addEventListener('click', function(event) {
      event.preventDefault();
  
      const newSaleItem = document.createElement('div');
      newSaleItem.classList.add('form-group');
      newSaleItem.innerHTML = `
        <%= j render('sale_item_fields', f: SaleItem.new) %>
      `;
  
      productsContainer.appendChild(newSaleItem);
    });
  });