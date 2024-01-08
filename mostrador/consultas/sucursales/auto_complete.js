$(document).ready(function() {
    // Function to populate select element
    function populateSelect(selectId, value) {
        var selectElement = $('#' + selectId);

        // Check if the option already exists in the select
        if (!selectElement.find('option[value="' + value + '"]').length) {
            // Add the single value as an option
            selectElement.append('<option value="' + value + '">' + value + '</option>');
        }
    }

    // Function to perform autocomplete based on CP input
    function autocompleteCP(cpInput) {
        $.ajax({
            url: 'autocomplete.php',
            type: 'POST',
            data: { cp: cpInput },
            success: function(data) {
                console.log('Parsed Data:', data);

                // Parse the JSON data returned from the server
                var parsedData = JSON.parse(data);

                // Clear existing options in Municipio, Asentamiento, and Tipo Asentamiento select elements
                $('#municipio').empty();
                $('#asentamiento').empty();
                $('#t_asentamiento').empty();

                // Update Municipio, Asentamiento, and Tipo Asentamiento select elements
                parsedData.data.forEach(function(row) {
                    populateSelect('municipio', row.municipio);
                    populateSelect('asentamiento', row.asentamiento);
                    populateSelect('t_asentamiento', row.tipo_asentamiento);
                });
            },

            error: function(error) {
                console.error('Error:', error);
            }
        });
    }

    // Trigger autocomplete on input and focus events
    $('#cp').on('input focus', function() {
        var cpInput = $(this).val();
        autocompleteCP(cpInput);
    });

    // Manually trigger the input event on page load
    $('#cp').trigger('input');
});
