<?php

namespace App\Http\Controllers;
use App\Models\M_lelang;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB; 
use Illuminate\Support\Facades\Log;

class Website extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function menu()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();

       // Fetch all logo data
       $logoData = $model->tampil('logo'); // Fetch all logos
       $filteredLogo = $logoData->filter(function ($item) {
           return $item->id_logo == 1; // Adjust this condition as needed
       });
       $data['satu'] = $filteredLogo->first();
       $logs = $model->getActivityLogs();
       $data['users'] = $model->tampil('user', 'id_user');
       try {
           $timestamp = now(); // Use Laravel's now() function for current time
           DB::table('activity_log')->insert([
               'user_id' => $user_id,
               'activity' => 'View',
               'description' => 'User viewed Menu Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
    $data['sa'] = $model->tampil('menu',
    'id_menu');

    echo view ('esensial/header', $data);
    echo view ('esensial/menu', $data);
    echo view('website/menu/menu',$data);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function deleteMenu($id)
{
    $model = new M_lelang();
    $user_id = session()->get('id_user');
    $where = ['id_menu' => $id];
    $isi = array(
            'deleted_at' => date('Y-m-d H:i:s')
        
     );
     try {
        $timestamp = now(); // Use Laravel's now() function for current time
        DB::table('activity_log')->insert([
            'user_id' => $user_id,
            'activity' => 'Deleted',
            'description' => 'User Deleted Menu Data.',
            'timestamp' => $timestamp,
        ]);
    }catch (\Exception $e) {
            // Log the error if activity logging fails
            logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
        }
    $model->edit('menu', $where ,$isi);

    return redirect()->to('Menu');
}
public function TambahMenu()
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
       $filteredLogo = $logoData->filter(function ($item) {
           return $item->id_logo == 1; // Adjust this condition as needed
       });
       $data['satu'] = $filteredLogo->first();
       $logs = $model->getActivityLogs();
       $data['users'] = $model->tampil('user', 'id_user');
       try {
           $timestamp = now(); // Use Laravel's now() function for current time
           DB::table('activity_log')->insert([
               'user_id' => $user_id,
               'activity' => 'View',
               'description' => 'User viewed Add Menu Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
           echo view ('esensial/header', $data);
           echo view ('esensial/menu', $data);
           echo view('website/menu/TambahMenu',$data);
           echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
}
    public function aksi_add_Menu (Request $request)
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $request->input('Kategory');
        $b = $request->input('Menu');
        $e = $request->input('harga');
        $c = $request->input('stok');
        $dashboardImage = $request->file('image');
        $uploadPath = public_path('assets/img/Menu/');
        
        $data = array(
            'Kategory' => $a,
            'nama_menu' =>  $b,
            'harga_menu' => $e,
            'stok' => $c
         );
         if ($dashboardImage) {
            $dashboardFileName = $dashboardImage->hashName();
            $dashboardImage->move($uploadPath, $dashboardFileName);
            $data['foto'] = $dashboardFileName;
        }
         $model->tambah('menu', $data);
         try {
            $timestamp = now(); // Use Laravel's now() function for current time
            DB::table('activity_log')->insert([
                'user_id' => $user_id,
                'activity' => 'add',
                'description' => 'User added Menu Data.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
            return redirect()->route('Menu')->with('success', 'Settings updated successfully!');
print_r($isi);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function EditMenu($id)
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
       $filteredLogo = $logoData->filter(function ($item) {
           return $item->id_logo == 1; // Adjust this condition as needed
       });
       $data['satu'] = $filteredLogo->first();
       $logs = $model->getActivityLogs();
       $data['users'] = $model->tampil('user', 'id_user');
       try {
           $timestamp = now(); // Use Laravel's now() function for current time
           DB::table('activity_log')->insert([
               'user_id' => $user_id,
               'activity' => 'View',
               'description' => 'User viewed Add Menu Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
           $where = array('id_menu'=> $id);
           $data1['menu']=$model->getWhere('menu', $where);
           echo view ('esensial/header', $data);
           echo view ('esensial/menu', $data);
           echo view('website/menu/EditMenu',$data1);
           echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
}
    public function aksi_Edit_Menu (Request $request)
	{
        $userLevel = session()->get('Level');
        $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $request->input('Kategory');
        $b = $request->input('Menu');
        $e = $request->input('harga');
        $c = $request->input('stok');
        $id = $request->input('id');
        $where = array('id_menu' => $id);
        $dashboardImage = $request->file('image');
        $uploadPath = public_path('assets/img/Menu/');
        
        $data = array(
            'Kategory' => $a,
            'nama_menu' =>  $b,
            'harga_menu' => $e,
            'stok' => $c
         );
         if ($dashboardImage) {
            $dashboardFileName = $dashboardImage->hashName();
            $dashboardImage->move($uploadPath, $dashboardFileName);
            $data['foto'] = $dashboardFileName;
        }
         $model->edit('menu',$where, $data);
         try {
            $timestamp = now(); // Use Laravel's now() function for current time
            DB::table('activity_log')->insert([
                'user_id' => $user_id,
                'activity' => 'add',
                'description' => 'User added Menu Data.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
            return redirect()->route('Menu')->with('success', 'Settings updated successfully!');
print_r($isi);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function transaksi ()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();

       // Fetch all logo data
       $logoData = $model->tampil('logo'); // Fetch all logos
       $filteredLogo = $logoData->filter(function ($item) {
           return $item->id_logo == 1; // Adjust this condition as needed
       });
       $data['satu'] = $filteredLogo->first();
       $logs = $model->getActivityLogs();
       $data['users'] = $model->tampil('user', 'id_user');
       try {
           $timestamp = now(); // Use Laravel's now() function for current time
           DB::table('activity_log')->insert([
               'user_id' => $user_id,
               'activity' => 'View',
               'description' => 'User viewed Menu Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
    $data1['sa'] = $model->tampil('transaksi',
    'transaksi');
    $data1['detail'] = DB::table('detail_transaksi')
    ->join('menu', 'detail_transaksi.menu_id', '=', 'menu.id_menu')
    ->get();


    echo view ('esensial/header', $data);
    echo view ('esensial/menu', $data);
    echo view('website/kasir/transaksi',$data1);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function status($id)
{
    $model = new M_lelang();
    $user_id = session()->get('id_user');
    $where = ['id_transaksi' => $id];
    $isi = array(
            'status' => '2'
        
     );
     try {
        $timestamp = now(); // Use Laravel's now() function for current time
        DB::table('activity_log')->insert([
            'user_id' => $user_id,
            'activity' => 'Complete',
            'description' => 'User Completed a transaction.',
            'timestamp' => $timestamp,
        ]);
    }catch (\Exception $e) {
            // Log the error if activity logging fails
            logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
        }
    $model->edit('transaksi',$where,$isi );
print_r($isi);
print_r($where);
    return redirect()->to('transaksi');
}
public function Cancel($id)
{
    $model = new M_lelang();
    $user_id = session()->get('id_user');
    $where = ['id_transaksi' => $id];
    $whereForeign = ['transaksi_id' => $id];

    // Data for soft delete
    $isi = array(
        'deleted_at' => date('Y-m-d H:i:s') // Soft delete flag
    );

    try {
        // Logging the cancellation activity
        $timestamp = now(); // Use Laravel's now() function for current time
        DB::table('activity_log')->insert([
            'user_id' => $user_id,
            'activity' => 'Cancel',
            'description' => 'User Canceled a Transaction.',
            'timestamp' => $timestamp,
        ]);
    } catch (\Exception $e) {
        // Log the error if activity logging fails
        logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
    }

    // Soft delete the main transaction record
    $model->edit('transaksi', $where, $isi);

    // Soft delete the related detail_transaksi records based on foreign key
    $model->edit('detail_transaksi', $whereForeign, $isi);

    // Redirect to Menu or other desired page
    return redirect()->to('transaksi');
}
public function meja ()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();

       // Fetch all logo data
       $logoData = $model->tampil('logo'); // Fetch all logos
       $filteredLogo = $logoData->filter(function ($item) {
           return $item->id_logo == 1; // Adjust this condition as needed
       });
       $data['satu'] = $filteredLogo->first();
       $logs = $model->getActivityLogs();
       $data['users'] = $model->tampil('user', 'id_user');
       try {
           $timestamp = now(); // Use Laravel's now() function for current time
           DB::table('activity_log')->insert([
               'user_id' => $user_id,
               'activity' => 'View',
               'description' => 'User viewed Meja Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
    $data1['sa'] = $model->tampil('meja',
    'transaksi');


    echo view ('esensial/header', $data);
    echo view ('esensial/menu', $data);
    echo view('website/meja/meja',$data1);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}

public function tambah_meja()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];
    $user_id = session()->get('id_user');
    if (in_array($userLevel, $allowedLevels)) {
    $model= new M_lelang();
       // Fetch all logo data
       $logoData = $model->tampil('logo'); // Fetch all logos
       $filteredLogo = $logoData->filter(function ($item) {
           return $item->id_logo == 1; // Adjust this condition as needed
       });
       $data['satu'] = $filteredLogo->first();
       $logs = $model->getActivityLogs();
       $data['users'] = $model->tampil('user', 'id_user');
       try {
           $timestamp = now(); // Use Laravel's now() function for current time
           DB::table('activity_log')->insert([
               'user_id' => $user_id,
               'activity' => 'View',
               'description' => 'User viewed Add Meja Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
        echo view('esensial/header', $data);
        echo view('esensial/menu', $data);
        echo view('website/meja/tambah_meja');
        echo view('esensial/footer');
    } else {
        return redirect()->to('notfound');
    }
}
 public function aksi_add_meja(Request $request)
{
    $model = new M_lelang();
    $user_id = session()->get('id_user');
    $e = $request->input('nama');
    $isi = array(
            'No_meja' => $e
        
     );
     try {
        $timestamp = now(); // Use Laravel's now() function for current time
        DB::table('activity_log')->insert([
            'user_id' => $user_id,
            'activity' => 'Add',
            'description' => 'User Added a Meja Number.',
            'timestamp' => $timestamp,
        ]);
    }catch (\Exception $e) {
            // Log the error if activity logging fails
            logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
        }
    $model->tambah('meja',$isi );
print_r($isi);

    return redirect()->to('meja');
}
public function scan ()
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
    $user_id = session()->get('id_user');
    $model = new M_lelang();

       // Fetch all logo data
       $logoData = $model->tampil('logo'); // Fetch all logos
       $filteredLogo = $logoData->filter(function ($item) {
           return $item->id_logo == 1; // Adjust this condition as needed
       });
       $data['satu'] = $filteredLogo->first();
       $logs = $model->getActivityLogs();
       $data['users'] = $model->tampil('user', 'id_user');
       try {
           $timestamp = now(); // Use Laravel's now() function for current time
           DB::table('activity_log')->insert([
               'user_id' => $user_id,
               'activity' => 'View',
               'description' => 'User viewed Scan Page.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }



    echo view ('esensial/header', $data);
    echo view ('esensial/menu', $data);
    echo view('website/scan/scan');
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function kasir($id)
{$userLevel = session()->get('Level');
    $allowedLevels = ['petugas','admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $model = new M_lelang();
    $user_id = session()->get('id_user');
   // Fetch all logo data
   $logoData = $model->tampil('logo'); // Fetch all logos
   $filteredLogo = $logoData->filter(function ($item) {
       return $item->id_logo == 1; // Adjust this condition as needed
   });
   $data['satu'] = $filteredLogo->first();
   $logs = $model->getActivityLogs();
   $data['users'] = $model->tampil('user', 'id_user');
   try {
       $timestamp = now(); // Use Laravel's now() function for current time
       DB::table('activity_log')->insert([
           'user_id' => $user_id,
           'activity' => 'View',
           'description' => 'User viewed Kasir Page.',
           'timestamp' => $timestamp,
       ]);
   }catch (\Exception $e) {
           // Log the error if activity logging fails
           logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
       }
$data['t'] = $model->tampil('menu',
'id_menu');


$where = ['id_meja' => $id];
$data['meja']=$model->getWhere('meja', $where);
    echo view('esensial/header',$data);
    echo view('website/Kasir/kasir',$data);
    echo view('esensial/footer',$data);
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function aksi_kasir(Request $request)
{
    $model = new M_lelang();
    $user_id = session()->get('id_user');
    $meja = $request->input('meja');
    $total = $request->input('total');
    $bayar = $request->input('bayar');
    $menuItem = $request->input('menu'); // This will give an array of id_menu
    $price = $request->input('harga');
    $kembalian = $request->input('kembalian');
    $id = $request->input('id');
    $menuItems = $request->input('menu_items'); // 'menu_items' should be an array of menu data

    // Insert data into the `transaksi` table
    $transaksiData = [
        'No_meja' => $meja,
        'tanggal_transaksi' => date('Y-m-d'),
        'total_harga' => $total,
        'bayar' => $bayar,
        'kembalian' => $kembalian,
        'status' => '1',
        'created_at' => date('Y-m-d H:i:s'),
    ];

    // Insert the transaction and get the ID of the inserted row
    $transaksiId = $model->tambah1('transaksi', $transaksiData);
    print_r($transaksiId);
    if ($request->input('menu') && $request->input('harga')) {
        $menuItems = array_map(null, $request->input('menu'), $request->input('harga'));
    
        foreach ($menuItems as $item) {
            list($menuId, $harga) = $item;
    
            $detailData = [
                'transaksi_id' => $transaksiId, // ID transaksi dari parent
                'menu_id' => $menuId, // ID menu
                'subtotal' => $harga, // Harga menu
                'created_at' => date('Y-m-d H:i:s'),
            ];
    
            // Simpan ke database menggunakan model
            $model->tambah1('detail_transaksi', $detailData);
    
            // Debugging (opsional)
            print_r($detailData);
        }
        return redirect()->to('Kasir/' . $id)->with('success', 'Transaction completed successfully.');
    }
    
}    

 
}

    
    

    // Redirect or display transaction and details for debugging
   




	


