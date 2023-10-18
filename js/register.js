<form id="myForm">
    <!-- Aquí van tus campos del formulario -->
    <button type="submit">Enviar</button>
</form>

<div id="message"></div>

<script>
document.getElementById('myForm').addEventListener('submit', function (e) {
    e.preventDefault();
    var formData = new FormData(this);

    fetch('../php/register.php', {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        // El servidor responderá con el mensaje de éxito o error
        document.getElementById('message').innerHTML = data;
    })
    .catch(error => {
        console.error(error);
    });
});
</script>

