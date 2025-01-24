<main id="main" class="main">
    <div class="container">
        <div class="pagetitle">
            <h1>User Management</h1>
        </div><!-- End Page Title -->

        <section class="section">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                        <div class="filter-container d-flex align-items-center gap-2">
    <label for="dynamic-filter" class="mb-0">Filter:</label>
    <select id="dynamic-filter" class="form-select w-auto">
        <option value="">All</option>
    </select>
    <a href="{{ url('TambahUser') }}">
        <button class="btn btn-success">+ Tambah</button>
    </a>
</div>

 </div> 
                            <!-- Table with stripped rows -->
                            <table class="table datatable" id="userTable">
                                <thead>
                                    <tr style="font-weight: bold; color: black; font-size: larger;">
                                        <th scope="col" class="text-center">No</th>
                                        <th scope="col" class="text-center">Name</th>
                                        <th scope="col" class="text-center">Username</th>
                                        <th scope="col" class="text-center">Level</th>
                                        <th scope="col" class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($sa as $index => $user)
                                        <tr class="table-row" data-level="{{ $user->Level }}">
                                            <td class="text-center">{{ $index + 1 }}</td>
                                            <td class="text-center">{{ $user->real }}</td>
                                            <td class="text-center">{{ $user->user }}</td>
                                            <td class="text-center">{{ $user->Level }}</td>
                                            <td class="text-center">
                                                <div style="display: flex; gap: 10px; justify-content: center;">
                                                    <a href="{{ url('delete/' . $user->id_user) }}" class="btn btn-danger" 
                                                        onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                                                    <a href="{{ url('UpdateUser/' . $user->id_user) }}" class="btn btn-warning">Edit</a>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main><!-- End #main -->

<script>
    // Function to populate filters dynamically based on Level
    function updateDynamicFilter() {
        const table = document.getElementById('userTable');
        const rows = table.querySelectorAll('.table-row');
        const filterSet = new Set();

        // Collect unique values for Level
        rows.forEach(row => {
            const level = row.getAttribute('data-level');
            if (level) {
                filterSet.add(level);
            }
        });

        // Populate the dynamic filter dropdown
        const dynamicFilter = document.getElementById('dynamic-filter');
        dynamicFilter.innerHTML = '<option value="">All</option>';
        filterSet.forEach(level => {
            const option = document.createElement('option');
            option.value = level;
            option.textContent = level;
            dynamicFilter.appendChild(option);
        });
    }

    // Function to filter table rows based on selected filter option
    function filterTable() {
        const selectedFilter = document.getElementById('dynamic-filter').value;
        const rows = document.querySelectorAll('#userTable .table-row');

        rows.forEach(row => {
            const rowLevel = row.getAttribute('data-level');
            if (selectedFilter === "" || rowLevel === selectedFilter) {
                row.style.display = ''; // Show the row
            } else {
                row.style.display = 'none'; // Hide the row
            }
        });
    }

    // Event listeners for filter dropdown
    document.getElementById('dynamic-filter').addEventListener('change', filterTable);

    // Initialize dynamic filter on page load
    window.onload = function() {
        updateDynamicFilter();
    };
</script>
