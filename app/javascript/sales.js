document.addEventListener('turbolinks:load', function() {
    // Encuentra el botón de agregar producto
    document.getElementById('add_product').addEventListener('click', function(e) {
      e.preventDefault();
  
      // Encuentra el div que contiene los productos
      var productsDiv = document.getElementById('products');
      
      // Crea un nuevo campo para el producto
      var newProduct = document.createElement('div');
      newProduct.innerHTML = "<input type='text' name='sale[products][]' placeholder='Nombre del producto'>";
      
      // Añade el nuevo campo al div de productos
      productsDiv.appendChild(newProduct);
    });
  });