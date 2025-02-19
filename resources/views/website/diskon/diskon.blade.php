<!DOCTYPE html>
<html lang="en" dir="ltr" data-theme="theme-default" data-assets-path="{{ asset('assets/') }}" data-template="vertical-menu-template-free">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
    <title>Perhitungan Diskon</title>
    <meta name="description" content="" />
    <link rel="icon" type="image/x-icon" href="{{ asset('assets/img/custom/logo.png') }}" />

    <link href="{{ asset('assets/vendor/fonts/boxicons.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/css/core.css') }}" rel="stylesheet" class="template-customizer-core-css">
    <link href="{{ asset('assets/vendor/css/theme-default.css') }}" rel="stylesheet" class="template-customizer-theme-css">
     <link href="{{ asset('assets/css/demo.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/vendor/css/pages/page-auth.css') }}" rel="stylesheet">

    <style>
        body {
            background-image: url('{{ asset('assets/img/custom/BG.png') }}'); /* Set background image */
            background-size: cover; /* Cover the entire viewport */
            background-position: center; /* Center the image */
            color: white; /* Set text color to white for better contrast */
        }
    </style>

    <script src="{{ asset('assets/vendor/js/helpers.js') }}"></script>
    <script src="{{ asset('assets/js/config.js') }}"></script>
    <!-- Google reCAPTCHA API -->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

</head>
<body>
    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <div class="card" style="background-color: rgba(255, 255, 255, 0.8);"> <!-- Added transparency to the card -->
                    <div class="card-body">
                        <!-- Logo -->
                        <div class="app-brand demo text-center">
                            @if (!empty($satu->logos))
                                <img src="{{ asset('assets/img/custom/') }}" alt="Login Icon"
                                    class="img-fluid mb-3 logo-login" style="max-width: 350px;"> 
                            @endif
                        </div>
                       
                        <form id="formAuthentication" class="mb-3" method="POST">
                            @csrf
                            <div class="mb-3">

                            <label for="username" class="form-label">Harga :</label>

                            <input type="text" class="form-control" id="total_harga_input"  name="total" required>
                            </div>

                            <div class="mb-3">
                            <label for="username" class="form-label">Diskon :</label>
                            <input type="number" class="form-control" id="bayar_input"  name="bayar" required>
                            </div>
                            <div class="mb-3">
                            <label for="username" class="form-label">Jumlah diskon yang diterima :</label>
                            <input type="Text" class="form-control" id="jumlah" name="jumlah"  readonly="readonly">
                            </div>
                            <div class="mb-3">
                            <label for="username" class="form-label">Total Harga Setelah Diskon :</label>
                            <input type="Text" class="form-control" id="kembalian_input" name="kembalian"  readonly="readonly">
                            </div>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="{{ asset('assets/vendor/libs/jquery/jquery.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/popper/popper.js') }}"></script>
    <script src="{{ asset('assets/vendor/js/bootstrap.js') }}"></script>
    <script src="{{ asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
    <script src="{{ asset('assets/vendor/js/menu.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>
    <!-- <script async defer src="https://buttons.github.io/buttons.js"></script> -->
    <script>
document.addEventListener('DOMContentLoaded', function () {

  const totalHargaInput = document.getElementById('total_harga_input');
  const bayarInput = document.getElementById('bayar_input');
  const jumlahInput = document.getElementById('jumlah');
  const kembalianInput = document.getElementById('kembalian_input');

  bayarInput.addEventListener('input', hitungDiskon);
  totalHargaInput.addEventListener('input', hitungDiskon);
  bayarInput.addEventListener('input', jumlah);
  totalHargaInput.addEventListener('input', jumlah);
  totalHargaInput.addEventListener('input', harga);
  bayarInput.addEventListener('input', diskon);

  function harga() {

    const totalHarga = parseFloat(totalHargaInput.value);   
    const bayar = parseFloat(bayarInput.value);   
    totalHargaInput.value = totalHargaInput.value.replace(/\D/g, ""); 
    totalHargaInput.value = Intl.NumberFormat("id-ID").format(totalHargaInput.value);
   
    if (totalHarga > 0 ) {


} else {

    totalHargaInput.value = '';
    }

  }
 
  function diskon() {
    const totalHarga = parseFloat(totalHargaInput.value);
    const bayar = parseFloat(bayarInput.value);
   
    if (bayar <= 100 && bayar >= 0 ) {
        
} else {
    bayarInput.value = '';
    jumlahInput.value = '0';
    }

  }
  
  function jumlah() {
    const totalHarga = parseFloat(totalHargaInput.value.replace(/\D/g, ""));
    const bayar = parseFloat(bayarInput.value);

    if (!isNaN(totalHarga) && !isNaN(bayar) ) {
      const kembalian = Math.max(0, totalHarga *(bayar / 100));
      jumlahInput.value =  kembalian.toLocaleString(0);
    } else {
      jumlahInput.value = '';
    }
  }
    function hitungDiskon() {

    const bayar = parseFloat(bayarInput.value);
    const totalHarga = parseFloat(totalHargaInput.value.replace(/\D/g, ""));
    
    if (!isNaN(totalHarga) && !isNaN(bayar) ) {
      const kembalian = Math.max(0, totalHarga - (totalHarga *(bayar / 100)));
      kembalianInput.value =  kembalian.toLocaleString(0);
    } else {
      kembalianInput.value = '';
    }
  }
  
  });






</script>
</body>
</html>
