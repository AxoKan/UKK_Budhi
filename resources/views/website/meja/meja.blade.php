<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/qrious/4.0.2/qrious.min.js"></script>
  <title>Table Management with QR Code</title>
</head>
<body>

<main id="main" class="main">
  <div class="container">
    <div class="pagetitle">
      <h1>Table Management</h1>
      <div class="filter-container d-flex align-items-center gap-2">
        <a href="{{ url('tambah_meja') }}">
          <button class="btn btn-success">+ Tambah</button>
        </a>
      </div>
    </div>

    <section class="section">
      <div class="row justify-content-center">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <div class="d-flex justify-content-between align-items-center mb-3">
                <div class="search-container">
                  <label for="search">Search:</label>
                  <input type="text" id="search" placeholder="Enter keywords...">
                </div>
              </div>

              <table class="table datatable" id="mitraTable">
                <thead>
                  <tr style="font-weight: bold; color: black; font-size: larger;">
                    <td align="center" scope="col">No</td>
                    <td align="center" scope="col">Table</td>
                    <td align="center" scope="col">QR</td>
                  </tr>
                </thead>
                <tbody>
                @foreach ($sa as $index => $user)
                  <tr>
                    <td align="center">{{ $index + 1 }}</td>
                    <td align="center">{{ $user->No_meja }}</td>
                    <td align="center">
                      <button 
                        class="btn btn-primary generate-qr-btn" 
                        data-table-id="{{ $user->id_meja }}"
                        data-table-number="{{ $user->No_meja }}">
                        Generate QR Code
                      </button>
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

    <!-- Modal -->
    <div class="modal fade" id="qrModal" tabindex="-1" aria-labelledby="qrModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="qrModalLabel">QR Code</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body text-center">
            <canvas id="qrCanvas"></canvas>
          </div>
          <div class="modal-footer">
          </div>
        </div>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
      document.addEventListener('DOMContentLoaded', function () {
        const buttons = document.querySelectorAll('.generate-qr-btn');

        buttons.forEach(button => {
          button.addEventListener('click', function () {
            const tableId = this.getAttribute('data-table-id');
            const qrCanvas = document.getElementById('qrCanvas');

            // Clear any existing QR code
            const context = qrCanvas.getContext('2d');
            context.clearRect(0, 0, qrCanvas.width, qrCanvas.height);

            // Generate a new QR code (only tableId in the URL)
            const qr = new QRious({
              element: qrCanvas,
              value: `{{ url('Kasir') }}/${tableId}`, // Only include the ID in the QR code
              size: 200 // Size of the QR code
            });

            // Show the modal
            const qrModal = new bootstrap.Modal(document.getElementById('qrModal'));
            qrModal.show();
          });
        });
      });
    </script>
  </div>
</main>

</body>
</html>
