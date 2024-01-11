<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interfaz de Pago</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff; /* Fondo blanco */
        }

        .payment-form {
            max-width: 600px; /* Ajusta el ancho máximo según tus necesidades */
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #8a2be2; /* Borde de color morado */
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #8a2be2; /* Borde de color morado */
        }

        button {
            background-color: #8a2be2; /* Fondo morado */
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #6a1a9a; /* Cambio de color al pasar el ratón */
        }

        .datepicker {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #8a2be2;
            box-sizing: border-box;
        }

        #paypal-button-container {
            margin-top: 15px;
        }

        #datos-correctos {
            margin-top: 10px;
            display: flex;
            align-items: center;
        }

        #datos-correctos input {
            margin-right: 5px;
        }
    </style>

    <!-- Incluye el script del SDK de PayPal -->
    <script src:="https://sandbox.paypal.com"></script>
    <script src="https://www.paypal.com/sdk/js?client-id=ATfEzI1g-tCPANH90Uaz2EcVBwIQRzCQuwZhrA6W1a7Env7S2FooVSZWNxf-UjFwK6A9yuPFJW8CgfZM&currency=MXN"></script>
</head>
<body>
    <form class="return-form" onsubmit="goBack()">
        <button type="submit" id="volver">Volver</button>
    </form>

    <div class="payment-form">
        <h2>Detalles de Pago</h2>
        <form id="payment-form">
            <label for="fecha-entrega">Fecha de Pago:</label>
            <input type="text" id="fecha-entrega" class="datepicker" value="2023-12-21" readonly required>
            <!-- Establece la fecha por defecto y deshabilita la interactividad del campo -->
            
            <label for="hora-pago">Hora de Pago:</label>
            <input type="time" id="hora-pago" value="" required>
            <!-- Campo de hora que muestra la hora actual -->

            <label for="monto-pago">Monto de Pago:</label>
            <input type="text" id="monto-pago" value="<?php echo $_SESSION['sum']?>" readonly>

            <div id="paypal-button-container">
                <!-- Renderiza el botón de PayPal -->
            </div>
        </form>
    </div>

    <script>
        // Renderiza el botón de PayPal
        var paypalButtons = paypal.Buttons({
            createOrder: function(data, actions) {
                // Aquí puedes definir la lógica para crear la orden en el servidor
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: document.getElementById('monto-pago').value || '234.00'
                            
                        }
                    }]
                });
                return actions.order.capture().then(function(details) {
                    alert('Pago completado por: ,       ' + details.payer.name.given_name + 'numero de Transaccion: 34567829393929');
                });
            },
            onApprove: function(data, actions) {
                // Aquí puedes definir la lógica cuando el pago es aprobado
                return actions.order.capture().then(function(details) {
                    agregarVenta(document.getElementById('monto-pago').value, details.id);
                });
            }
        });

        paypalButtons.render('#paypal-button-container');

        // Función para obtener la hora actual y establecerla en el campo de hora
        function obtenerHoraActual() {
            var horaActual = new Date().toLocaleTimeString('en-US', {hour12: false});
            document.getElementById('hora-pago').value = horaActual;
        }

        // Llama a la función para obtener la hora actual cuando se carga la página
        obtenerHoraActual();

        // Habilita o deshabilita los botones de PayPal según el estado del checkbox
        document.getElementById('check-datos-correctos').addEventListener('change', function() {
            var habilitarBotones = this.checked;
            paypalButtons.enable(habilitarBotones);
        });
    </script>

    <!-- Agrega el script del mini calendario (datepicker) -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function() {
            // Inicializa el mini calendario (datepicker)
            $("#fecha-entrega").datepicker();
        });
    </script>
    <script>
        // Agregar un evento click al enlace "Volver"
        document.getElementById('volver').addEventListener('click', function (event) {
            event.preventDefault(); // Evitar la acción predeterminada del enlace
            window.history.back(); // Retroceder a la página anterior
        });
    </script>
    <script src="agregar_compra.js"></script>
</body>
</html>
