const total = document.querySelector(".precio-total");
const recibido = document.getElementById("recibido-input");
const cambio = document.getElementById("cambio-input");

recibido.addEventListener('input', function(){
    const cambioValue = recibido.value - total.value;
    cambio.value = cambioValue.toFixed(2);
});
