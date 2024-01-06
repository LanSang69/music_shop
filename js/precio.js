document.getElementById('myForm').addEventListener('submit', function (e) {
    e.preventDefault();
    const formData = new FormData(this);

    fetch('../../php/empleado/compra.php', {
        method: 'POST',
        body: formData,
    })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                document.getElementById('totalPrice').textContent = data.totalPrice;
            } else {
                console.log(data.message);
            }
        })
        .catch(error => {
            // Handle fetch errors
            console.error(error);
        });
});

document.getElementById('terminarC').addEventListener("click", function (e) {
    e.preventDefault();

    const totalPrice = document.getElementById("totalPrice").textContent;

    // Crea un objeto XMLHttpRequest
    const xhr = new XMLHttpRequest();

    // Define la URL del script PHP al que deseas enviar los datos
    const phpScriptURL = "../../php/empleado/finalizar_venta.php"; // Reemplaza con la URL real

    // Define los datos que se enviarán al servidor (totalPrice en este caso)
    const data = new FormData();
    data.append("totalPrice", totalPrice);

    // Configura la solicitud
    xhr.open("POST", phpScriptURL, true);

    // Define el controlador de eventos para manejar la respuesta del servidor
    xhr.onload = function () {
        if (xhr.status === 200) {
            // La solicitud se realizó con éxito; puedes procesar la respuesta aquí si es necesario
            alert("Precio total enviado al servidor.");
            // Redirige a una nueva página o realiza otras acciones según sea necesario
            window.location.href = "add_v.php"; // Reemplaza con la página deseada
        } else {
            // La solicitud falló; maneja los errores aquí
            alert("La solicitud falló con el estado: " + xhr.status);
        }
    };

    // Envía la solicitud con los datos
    xhr.send(data);
});

