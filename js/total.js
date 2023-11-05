const calcularT = document.getElementById("precioTotal");
const total = document.querySelector('.total'); // Obtén el elemento <p> con la clase "total"

calcularT.addEventListener("click", () => {
    if(total.style.display === 'none' || total.style.display === ''){
        total.style.display = 'block';
    } else {
        total.style.display = 'none';
    }
});
