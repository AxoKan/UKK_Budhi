
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
    <form action="{{ url('aksi_add_user') }}" method="POST" enctype="multipart/form-data">
      @csrf
      <div class="container">
        <div class="row mb-3">
          <label for="nama" class="col-sm-2 col-form-label">Name</label>
          <div class="col-sm-10">
            <input 
              type="text" 
              class="form-control" 
              name="nama" 
              id="nama" 
              placeholder="Ex: Jay" >
          </div>
        </div>

        <div class="row mb-3">
          <label for="username" class="col-sm-2 col-form-label">Username</label>
          <div class="col-sm-10">
            <input 
              type="text" 
              class="form-control" 
              name="Nik" 
              id="username" 
              placeholder="Ex: User"  >
          </div>
        </div>

        <div class="row mb-3">
          <label for="password" class="col-sm-2 col-form-label">Password</label>
          <div class="col-sm-10">
            <input 
              type="password" 
              class="form-control" 
              name="password" 
              id="password" 
              placeholder="Ex: ....">
          </div>
        </div>

        <div class="row mb-3">
          <label for="angkatan" class="col-sm-2 col-form-label">Angkatan</label>
          <div class="col-sm-10">
            <select name="angkatan" class="form-control">
              <option value="">Pilih</option>
              <option value="admin">Admin</option>
              <option value="petugas">Petugas</option>
            </select>
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

