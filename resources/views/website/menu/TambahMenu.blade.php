
<div class="container-xxl flex-grow-1 container-p-y">
  <div class="card mb-4">
    <!-- Account -->
    <div class="card-body">
      <div class="d-flex align-items-start align-items-sm-center gap-4">
        <div style="text-align: center;">
          <!-- Placeholder for optional content -->
        </div>
        <div class="button-wrapper">
          <!-- Placeholder for optional buttons -->
        </div>
      </div>
    </div>
    <hr class="my-0" />
    <form action="{{ url('aksi_add_Menu') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <div class="container">
        <div class="row mb-3">
          <label for="nama" class="col-sm-2 col-form-label">Kategory</label>
          <div class="col-sm-10">
          <select name="Kategory" class="form-control">
              <option value="">Pilih</option>
              <option value="Drink">Drink</option>
              <option value="Food">Food</option>
            </select>
          </div>
        </div>

        <div class="row mb-3">
                <label for="image" class="col-sm-2 col-form-label">Foto</label>
                <div class="col-sm-10">
                    <input type="file" class="form-control" name="image" id="image">
                </div>
                </div>

        <div class="row mb-3">
          <label for="password" class="col-sm-2 col-form-label">Menu</label>
          <div class="col-sm-10">
            <input 
              type="text" 
              class="form-control" 
              name="Menu" 
              id="password" 
              placeholder="Ex: apple">
          </div>
        </div>

        <div class="row mb-3">
          <label for="password" class="col-sm-2 col-form-label">Harga</label>
          <div class="col-sm-10">
            <input 
              type="text" 
              class="form-control" 
              name="harga" 
              id="password" 
              placeholder="Ex: 12000">
          </div>
        </div>
        <div class="row mb-3">
          <label for="password" class="col-sm-2 col-form-label">stok</label>
          <div class="col-sm-10">
            <input 
              type="text" 
              class="form-control" 
              name="stok" 
              id="password" 
              placeholder="Ex: 10">
          </div>
        </div>

        <div class="mt-2">
          <button type="submit" class="btn btn-primary me-2">Save changes</button>
        </div>
      </div>
    </form>
  </div>
  <!-- /Account -->
</div>

