
        function calculateChange() {
            const totalAmount = parseFloat(document.getElementById("total-amount").textContent);
            const recibidoInput = document.querySelector(".recibido-input");
            const cambioAmount = document.getElementById("cambio-amount");
            const getFacturaButton = document.querySelector(".get-factura");
            const terminarCompraButton = document.querySelector(".terminar-compra");

            if (!isNaN(totalAmount)) {
                const recibido = parseFloat(recibidoInput.value);
                const cambio = recibido - totalAmount;
                cambioAmount.textContent = cambio.toFixed(2);

                // Habilitar botones si se ha ingresado un monto recibido válido
                getFacturaButton.disabled = isNaN(recibido) || recibido <= 0;
                terminarCompraButton.disabled = isNaN(recibido) || recibido <= 0;
            } else {
                cambioAmount.textContent = "0.00";
            }
        }