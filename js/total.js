const calcularT = document.getElementById("precioTotal");
const total = document.querySelector('.total'); // Obtén el elemento <p> con la clase "total"

calcularT.addEventListener("click", (event) => {
    event.preventDefault(); // Prevent the default link behavior
    
    if (total.style.display === 'none' || total.style.display === '') {
        total.style.display = 'block';
    } else {
        total.style.display = 'none';
    }
});

