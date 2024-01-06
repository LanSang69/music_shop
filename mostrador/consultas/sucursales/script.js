function getSelectedSucursal() {
    var selectedRadio = document.querySelector('input[name="selectedItem"]:checked');
    if (selectedRadio) {
        var selectedRow = selectedRadio.closest('tr');
        var id = selectedRadio.value;
        var name = selectedRow.cells[0].textContent;
        var colonia = selectedRow.cells[1].textContent;
        var ciudad = selectedRow.cells[2].textContent;
        var cp = selectedRow.cells[3].textContent;
        var estado = selectedRow.cells[4].textContent;
        
        return { id: id, name: name, colonia: colonia, ciudad: ciudad, cp: cp, estado: estado };
    }
    return null;
}

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

function modifySucursal() {
    var selectedSucursal = getSelectedSucursal();
    if (selectedSucursal) {
        var id = selectedSucursal.id;
        var name = selectedSucursal.name;
        var colonia = selectedSucursal.colonia;
        var ciudad = selectedSucursal.ciudad;
        var cp = selectedSucursal.cp;
        var estado = selectedSucursal.estado;

        window.location.href = 'edit_s.php?id=' + id +
        '&name=' + name +
        '&colonia=' + colonia +
        '&ciudad=' + ciudad +
        '&cp=' + cp +
        '&estado=' + estado;
    } else {
        showAlert('warning', 'Error', 'Por favor, selecciona una sucursal.', 'OK');
    }
}

function deleteSucursal() {
    var selectedSucursal = getSelectedSucursal();
    if (selectedSucursal) {
        var id = selectedSucursal.id;
        var name = selectedSucursal.name;

        Swal.fire({
            icon: 'warning',
            title: '¿Estás seguro?',
            text: 'Estás a punto de dar de baja la sucursal: ' + name,
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
                            showAlert('success', 'Éxito', 'Sucursal ' + name + ' eliminada', 'OK', function () {
                                // Reload the page after deletion
                                location.reload();
                            });
                        } else {
                            // Display error message
                            showAlert('error', 'Error', 'Error al descontinuar sucursal: ' + response.message, 'OK');
                        }
                    }
                };
                xhr.open('GET', 'delete_s.php?id=' + id + '&name=' + encodeURIComponent(name), true);
                xhr.send();
            } else {
                // User clicked 'Cancelar', do nothing
            }
        });
    } else {
        showAlert('warning', 'Error', 'Por favor, selecciona una sucursal.', 'OK');
    }
}