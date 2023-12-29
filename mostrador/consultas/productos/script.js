function getSelectedProduct() {
    var selectedRadio = document.querySelector('input[name="selectedItem"]:checked');
    if (selectedRadio) {
        var selectedRow = selectedRadio.closest('tr');
        var id = selectedRadio.value;
        console.log(id);
        var name = selectedRow.cells[0].textContent;
        var tipo = selectedRow.cells[1].textContent;
        var existencia = selectedRow.cells[2].textContent;
        var precio = selectedRow.cells[3].textContent;
        var marca = selectedRow.cells[4].textContent;
        var modelo = selectedRow.cells[5].textContent;
        
        return { id: id, name: name, tipo: tipo, existencia: existencia, precio: precio, marca: marca, modelo: modelo};
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

function modifyProduct() {
    var selectedProduct = getSelectedProduct();
    if (selectedProduct) {
        var id = selectedProduct.id;
        var name = selectedProduct.name;
        var tipo = selectedProduct.tipo;
        var existencia = selectedProduct.existencia;
        var precio = selectedProduct.precio;
        var marca = selectedProduct.marca;
        var modelo = selectedProduct.modelo;

        window.location.href = 'edit_p.php?id=' + id +
        '&name=' + name +
        '&tipo=' + tipo +
        '&existencia=' + existencia +
        '&precio=' + precio +
        '&marca=' + marca +
        '&modelo=' + modelo;
    } else {
        showAlert('warning', 'Error', 'Por favor, selecciona un producto.', 'OK');
    }
}

function deleteProduct() {
    var selectedProduct = getSelectedProduct();
    if (selectedProduct) {
        var id = selectedProduct.id;
        var name = selectedProduct.name;

        Swal.fire({
            icon: 'warning',
            title: '¿Estás seguro?',
            text: 'Estás a punto de dar de baja el producto: ' + name,
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
                            showAlert('success', 'Éxito', 'Producto ' + name + ' eliminado', 'OK', function () {
                                // Reload the page after deletion
                                location.reload();
                            });
                        } else {
                            // Display error message
                            showAlert('error', 'Error', 'Error al descontinuar producto: ' + response.message, 'OK');
                        }
                    }
                };
                xhr.open('GET', 'delete_p.php?id=' + id + '&name=' + encodeURIComponent(name), true);
                xhr.send();
            } else {
                // User clicked 'Cancelar', do nothing
            }
        });
    } else {
        showAlert('warning', 'Error', 'Por favor, selecciona un producto.', 'OK');
    }
}



function assignSchedule() {
    var selectedEmployee = getSelectedEmployee();
    if (selectedEmployee) {
        var id = selectedEmployee.id;
        var name = encodeURIComponent(selectedEmployee.name);
        var rfc = encodeURIComponent(selectedEmployee.rfc);
        window.location.href = 'assign_schedule.php?id=' + id + '&name=' + name + '&rfc=' + rfc;
    } else {
        alert('Por favor, selecciona un producto.');
    }
}