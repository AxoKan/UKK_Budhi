<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Activity Log</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Include Select2 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 30px;
        }
        .table thead th {
            background-color: #007bff;
            color: #ffffff;
            text-align: center;
        }
        .table tbody tr:nth-child(odd) {
            background-color: #e9ecef;
        }
        .table tbody tr:hover {
            background-color: #d6d6d6;
        }
        .no-logs {
            text-align: center;
            color: #6c757d;
            font-style: italic;
        }
        h2 {
            color: #007bff;
            margin-bottom: 20px;
        }
        .card {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            background-color: #007bff;
            color: #ffffff;
            font-weight: bold;
        }
        #searchBar {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                Activity Log
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="searchBar">Search by Username:</label>
                    <input type="text" id="searchBar" class="form-control" placeholder="Search user..." />
                </div>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr style="font-weight: bold; color: white; font-size: larger;">
                            <th>No</th>
                            <th>Username</th>
                            <th>Activity</th>
                            <th>Description</th>
                            <th>Timestamp</th>
                        </tr>
                    </thead>
                    <tbody id="logTableBody">
                        @php $no = 1; @endphp
                        @if (!empty($logs) && count($logs) > 0)

                            @foreach ($logs as $log)
                            <tr data-user="{{ $log->user }}">
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $log->user }}</td>
                                    <td>{{ $log->activity }}</td>
                                    <td>{{ $log->description }}</td>
                                    <td>{{ $log->timestamp }}</td>
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="5" class="no-logs">No activity logs found</td>
                            </tr>
                        @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    
    <script>
        $(document).ready(function() {
            // Listen for input in the search bar
            $('#searchBar').on('input', function() {
                var searchQuery = $(this).val().toLowerCase(); // Get the input value and convert it to lowercase

                $('#logTableBody tr').each(function() {
                    var username = $(this).find('td:nth-child(2)').text().toLowerCase(); // Get the username in the row

                    // If the username matches the search query, show the row, otherwise hide it
                    if (username.indexOf(searchQuery) !== -1) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                });
            });
        });
    </script>
</body>
</html>
