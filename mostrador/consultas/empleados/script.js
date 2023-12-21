function getSelectedEmployee() {
    var selectedRadio = document.querySelector('input[name="selectedItem"]:checked');
    if (selectedRadio) {
        var selectedRow = selectedRadio.closest('tr');
        var id = selectedRadio.value;
        var name = selectedRow.cells[0].textContent;
        var apellido1 = selectedRow.cells[1].textContent;
        var apellido2 = selectedRow.cells[2].textContent;
        var rfc = selectedRow.cells[3].textContent;
        var puesto = selectedRow.cells[4].textContent;
        var sucursal = selectedRow.cells[5].textContent;
        
        return { id: id, name: name, apellido1: apellido1, apellido2: apellido2, rfc: rfc, puesto: puesto, sucursal: sucursal };
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

function modifyEmployee() {
    var selectedEmployee = getSelectedEmployee();
    if (selectedEmployee) {
        var id = selectedEmployee.id;
        var name = selectedEmployee.name;
        var p_ap = selectedEmployee.apellido1;
        var s_ap = selectedEmployee.apellido2;
        var rfc = selectedEmployee.rfc;
        var puesto = selectedEmployee.puesto;
        var sucursal = selectedEmployee.sucursal;
        window.location.href = 'edit_emp.php?id=' + id +
        '&name=' + name +
        '&p_ap=' + p_ap +
        '&s_ap=' + s_ap +
        '&rfc=' + rfc +
        '&puesto=' + puesto +
        '&sucursal=' + sucursal;
    } else {
        alert('Por favor, selecciona un empleado.');
    }
}

function deleteEmployee() {
    var selectedEmployee = getSelectedEmployee();
    if (selectedEmployee) {
        var id = selectedEmployee.id;
        var name = selectedEmployee.name;
        var rfc = selectedEmployee.rfc;

        Swal.fire({
            icon: 'warning',
            title: '¿Estás seguro?',
            text: 'Estás a punto de despedir al empleado: ' + name + ' con RFC: ' + rfc,
            showCancelButton: true,
            confirmButtonText: 'Sí, despedir',
            cancelButtonText: 'Cancelar'
        }).then(function (result) {
            if (result.isConfirmed) {
                // User clicked 'Sí, despedir', proceed with deletion
                var xhr = new XMLHttpRequest();
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var response = JSON.parse(xhr.responseText);
                        if (response.success) {
                            // Display success message
                            showAlert('success', 'Éxito', 'Empleado ' + name + ' de RFC: ' + rfc + ' despedido', 'OK', function () {
                                // Reload the page after deletion
                                location.reload();
                            });
                        } else {
                            // Display error message
                            showAlert('error', 'Error', 'Error al despedir empleado: ' + response.message, 'OK');
                        }
                    }
                };
                xhr.open('GET', 'fire_employee.php?id=' + id + '&name=' + encodeURIComponent(name) + '&rfc=' + encodeURIComponent(rfc), true);
                xhr.send();
            } else {
                // User clicked 'Cancelar', do nothing
            }
        });
    } else {
        showAlert('warning', 'Error', 'Por favor, selecciona un empleado.', 'OK');
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
        alert('Por favor, selecciona un empleado.');
    }
}