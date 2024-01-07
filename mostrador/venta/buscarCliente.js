    const searchInput = document.getElementById('search-clients');
    const dynamicContentContainer1 = document.getElementById('resultados');


    function updateContent(searchTerm, page) {
        // Make an AJAX request to fetch data based on the selected option, search term, and page
        fetch(`get_clients.php?search=${searchTerm}&page=${page}`)
            .then(response => response.text())
            .then(data => {
                // Update the dynamic content container
                dynamicContentContainer1.innerHTML = data;
            })
            .catch(error => console.error(error));
    }

    // Function to handle page change
    function changePage(page) {
        const searchClients = searchInput.value;
        updateContent(searchClients, page);
    }

    // Event listener for input change
    searchInput.addEventListener('input', function() {
        const searchClients = searchInput.value;
        updateContent(searchClients, 1);
    });