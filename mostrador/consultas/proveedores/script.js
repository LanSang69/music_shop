function showAlert(icon, title, text, confirmButtonText, callback) {
    Swal.fire({
        icon: icon,
        title: title,
        text: text,
        confirmButtonText: confirmButtonText
    }).then(function (result) {
        if (result.isConfirmed && typeof callback === 'function') {
            callback(); // Call the callback function if provided
        }
    });
}

function getSelectedProveedor() {
    var selectedRadio = document.querySelector('input[name="selectedItem"]:checked');
    if (selectedRadio) {
        var selectedRow = selectedRadio.closest('tr');
        var id = selectedRadio.value;
        var nombre = selectedRow.cells[0].textContent;
        var rfc = selectedRow.cells[1].textContent;
        var rs = selectedRow.cells[2].textContent;
        var colonia = selectedRow.cells[3].textContent;
        var ciudad = selectedRow.cells[4].textContent;
        var cp = selectedRow.cells[5].textContent;
        var nc = selectedRow.cells[6].textContent;
        var apellido1 = selectedRow.cells[7].textContent;
        var apellido2 = selectedRow.cells[8].textContent;
        var correo = selectedRow.cells[9].textContent;

        return {
            id: id,
            nombre: nombre,
            rfc: rfc,
            rs: rs,
            colonia: colonia,
            ciudad: ciudad,
            cp: cp,
            nc: nc,
            apellido1: apellido1,
            apellido2: apellido2,
            correo: correo
        };
    }
    return null;
}

function modifyProveedor() {
    var selectedProveedor = getSelectedProveedor();
    if (selectedProveedor) {
        var id = selectedProveedor.id;
        var nombre = selectedProveedor.nombre;
        var rfc = selectedProveedor.rfc;
        var rs = selectedProveedor.rs;
        var colonia = selectedProveedor.colonia;
        var ciudad = selectedProveedor.ciudad;
        var cp = selectedProveedor.cp;
        var nc = selectedProveedor.nc;
        var apellido1 = selectedProveedor.apellido1;
        var apellido2 = selectedProveedor.apellido2;
        var correo = selectedProveedor.correo;

        window.location.href = 'edit_p.php?id=' + id +
        '&nombre=' + nombre +
        '&rfc=' + rfc +
        '&rs=' + rs +
        '&colonia=' + colonia +
        '&ciudad=' + ciudad +
        '&cp=' + cp +
        '&nc=' + nc +
        '&apellido1=' + apellido1 +
        '&apellido2=' + apellido2 +
        '&correo=' + correo;
    } else {
        showAlert('warning', 'Error', 'Por favor, selecciona un proveedor.', 'OK');
    }
}

function deleteProveedor() {
    var selectedProveedor = getSelectedProveedor();
    if (selectedProveedor) {
        var id = selectedProveedor.id;
        var nombre = selectedProveedor.nombre;

        Swal.fire({
            icon: 'warning',
            title: '¿Estás seguro?',
            text: 'Estás a punto de dar de baja al proveedor: ' + nombre,
            showCancelButton: true,
            confirmButtonText: 'Sí, descontinuar',
            cancelButtonText: 'Cancelar'
        }).then(function (result) {
            if (result.isConfirmed) {
                // User clicked 'Sí, descontinuar', proceed with deletion
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var response = JSON.parse(xhr.responseText);
                        if (response.success) {
                            // Display success message
                            showAlert('success', 'Éxito', 'Proveedor ' + nombre + ' descontinuado', 'OK', function () {
                                // Reload the page after deletion
                                location.reload();
                            });
                        } else {
                            // Display error message
                            showAlert('error', 'Error', 'Error al descontinuar proveedor: ' + response.message, 'OK');
                        }
                    }
                };
                xhr.open('GET', 'delete_p.php?id=' + id + '&nombre=' + encodeURIComponent(nombre), true);
                xhr.send();
            } else {
                // User clicked 'Cancelar', do nothing
            }
        });
    } else {
        showAlert('warning', 'Error', 'Por favor, selecciona un proveedor.', 'OK');
    }
}
