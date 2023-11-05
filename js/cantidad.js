const masButtons = document.querySelectorAll(".alter_cantidad #mas");
const menosButtons = document.querySelectorAll(".alter_cantidad #menos");
const totalB = document.getElementById("total");

// Agregar manejadores de eventos a los botones de todos los productos
masButtons.forEach((button) => {
  button.addEventListener("click", () => {
    const parent = button.closest(".alter_cantidad");
    const cantidadElement = parent.querySelector(".cantidad");
    updateCantidad(cantidadElement, 1); // Aumentar en 1
  });
});

menosButtons.forEach((button) => {
  button.addEventListener("click", () => {
    const parent = button.closest(".alter_cantidad");
    const cantidadElement = parent.querySelector(".cantidad");
    updateCantidad(cantidadElement, -1); // Disminuir en 1
  });
});

// Función para actualizar la cantidad
function updateCantidad(cantidadElement, value) {
  let cantidad = parseInt(cantidadElement.textContent);
  cantidad += value;
  if (cantidad >= 0) {
    cantidadElement.textContent = cantidad;
  }
}