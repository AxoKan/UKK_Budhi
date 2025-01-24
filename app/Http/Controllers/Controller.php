<?php

namespace App\Http\Controllers;
use App\Models\M_lelang;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB; 
use Illuminate\Support\Facades\Log;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function Login()
	{
        $model= new M_lelang();
        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = $logoData->filter(function ($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = $filteredLogo->first();

    echo view('basic/login/Login', $data);
	}
    public function aksi_login(Request $request)
    {
        // Mengakses input dari request
        $name = $request->input('username');
        $pw = $request->input('password');    
        // Membuat instance model
        
    
            $model = new M_lelang();
            $user = $model->getWhere('user', ['user' => $name]); // Dapatkan pengguna berdasarkan username
    
            if ($user && $user->password === $pw) { // Verifikasi password tanpa hash
                // Set session
                session()->put('user', $user->user);
                session()->put('real', $user->real);
                session()->put('id_user', $user->id_user);
                session()->put('Level', $user->Level);
               

                return redirect()->to('login1');
            } else {
                return redirect()->to('')->with('error', 'Invalid username or password.');
            }
        }

        public function login1()
        {
            // Get the user ID from the session
            $user_id = session()->get('id_user');
        
            // Redirect to login if the user is not authenticated
            if (!$user_id) {
                return redirect()->route('');
            }
        
            // Log user activity directly using DB facade
            try {
                $timestamp = now(); // Use Laravel's now() function for current time
        
                DB::table('activity_log')->insert([
                    'user_id' => $user_id,
                    'activity' => 'Login',
                    'description' => 'User has logged in.',
                    'timestamp' => $timestamp,
                ]);
            } catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
        
            // Redirect to the dashboard
            return redirect()->route('dashboard');
        }
        
        public function dashboard()
    {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = $logoData->filter(function ($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = $filteredLogo->first();
        try {
            $timestamp = now(); // Use Laravel's now() function for current time
    
            DB::table('activity_log')->insert([
                'user_id' => $user_id,
                'activity' => 'View',
                'description' => 'User viewed dashboard.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
            $jumlah_Menu = $model->hitungSemuaMenu();
            $jumlah_transaksi = $model->hitungTransaksiHariIni();
 $data1['jumlah_Menu'] = $jumlah_Menu;
 $data1['jumlah_transaksi'] = $jumlah_transaksi;
      
        echo view('esensial/header',$data);
        echo view('esensial/menu',$data);
        echo view('basic/dashboard/dashboard',$data1);
        echo view('esensial/footer');
    }
    
    public function activitylog()
    {
        $user_id = session()->get('id_user');
        $model = new M_lelang();

        $logoData = $model->tampil('logo'); // Fetch all logos
        $filteredLogo = $logoData->filter(function ($item) {
            return $item->id_logo == 1; // Adjust this condition as needed
        });
        $data['satu'] = $filteredLogo->first();
        $logs = $model->getActivityLogs();
        $data['users'] = $model->tampil('user', 'id_user');
        $data['logs'] = $logs;
        try {
            $timestamp = now(); // Use Laravel's now() function for current time
            DB::table('activity_log')->insert([
                'user_id' => $user_id,
                'activity' => 'View',
                'description' => 'User viewed Activity log.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }

      
        echo view('esensial/header',$data);
        echo view('esensial/menu',$data);
        echo view('basic/admin/activitylog', $data);
        echo view('esensial/footer');
    }
    public function setting()
{
    $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];
    $user_id = session()->get('id_user');

    // Check if the user level is authorized
    if (in_array($userLevel, $allowedLevels)) {
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
                'description' => 'User viewed Website Setting.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }

        // Load views
        echo view('esensial/header', $data);
        echo view('esensial/menu', $data);
        echo view('basic/admin/setting', $data);
        echo view('esensial/footer');
    } else {
        // Redirect unauthorized users
        return redirect()->to('notfound');
    }
}
public function aksi_setting(Request $request)
{
    $user_id = session('id_user');
    
    // Validate the input fields and uploaded files
    $request->validate([
        'nama' => 'required|string|max:255',
        'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        'image2' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
    ]);

    // Fetch form inputs
    $nama_logo = $request->input('nama');
    $icon = $request->file('image2');
    $dashboardImage = $request->file('image');
    
    // Prepare data for update
    $data = ['nama_logo' => $nama_logo];
    
    // Define upload directory
    $uploadPath = public_path('assets/img/custom/');
    
    // Handle tab icon upload
    if ($icon) {
        $iconFileName = $icon->hashName();
        $icon->move($uploadPath, $iconFileName);
        $data['icon'] = $iconFileName;
    }
    
    // Handle dashboard icon upload
    if ($dashboardImage) {
        $dashboardFileName = $dashboardImage->hashName();
        $dashboardImage->move($uploadPath, $dashboardFileName);
        $data['logos'] = $dashboardFileName;
    }
    
    // Update logo data in the database
    DB::table('logo')->where('id_logo', 1)->update($data);
    
    // Log activity
    try {
        DB::table('activity_log')->insert([
            'user_id' => $user_id,
            'activity' => 'Update',
            'description' => 'User updated Website Settings.',
            'timestamp' => now()->setTimezone('Asia/Jakarta'), // Timezone adjustment
        ]);
    } catch (\Exception $e) {
        // Log error if activity logging fails
        Log::error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
    }
    
    // Redirect back with success message
    return redirect()->route('setting', ['id' => 1])->with('success', 'Settings updated successfully!');
}   
public function User()
{$userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

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
               'description' => 'User viewed user Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
    $data['sa'] = $model->tampil('user',
    'id_user');

    echo view ('esensial/header', $data);
    echo view ('esensial/menu', $data);
    echo view('basic/admin/users/User',$data);
    echo view ('esensial/footer');
} else {
    return redirect()->to('http://localhost:8080/home/error_404');
}
}
public function add_user()
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

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
               'description' => 'User viewed Add user Data.',
               'timestamp' => $timestamp,
           ]);
       }catch (\Exception $e) {
               // Log the error if activity logging fails
               logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
           }
           echo view ('esensial/header', $data);
           echo view ('esensial/menu', $data);
           echo view('basic/admin/users/AddUser',$data);
           echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_Add_user(Request $request)
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $request->input('nama');
        $b = $request->input('Nik');
        $e = $request->input('angkatan');
        $c = $request->input('password');
        $isi = array(
            'real' => $a,
            'user' =>  $b,
            'password' => $c,
            'Level' => $e
         );
         $model->tambah('user', $isi);
         try {
            $timestamp = now(); // Use Laravel's now() function for current time
            DB::table('activity_log')->insert([
                'user_id' => $user_id,
                'activity' => 'add',
                'description' => 'User added user Data.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
            return redirect()->route('User')->with('success', 'Settings updated successfully!');
print_r($isi);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function DelUser($id)
    {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $where = ['id_user' => $id];
        
        try {
            $timestamp = now(); // Use Laravel's now() function for current time
            DB::table('activity_log')->insert([
                'user_id' => $user_id,
                'activity' => 'Delete',
                'description' => 'User Deleted user Data.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
        $model->hapus('user',  $where);
    
        return redirect()->to('User');
    }
    public function Update_user($id)
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

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
                'description' => 'User viewed Update user Data.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
 $where = array('id_user'=> $id);
 $data1['user']=$model->getWhere('user', $where);
 echo view ('esensial/header', $data);
 echo view ('esensial/menu', $data);
		echo view('basic/admin/users/UpUser',$data1);
        echo view ('esensial/footer');
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    public function aksi_Update_User(Request $request)
	{
        $userLevel = session()->get('Level');
    $allowedLevels = ['admin'];

    if (in_array($userLevel, $allowedLevels)) {
        $user_id = session()->get('id_user');
        $model = new M_lelang();
        $a = $request->input('nama');
        $b = $request->input('Nik');
        $e = $request->input('angkatan');
        $c = $request->input('password');
        $id = $request->input('id');
        $where = array('id_user' => $id);
        $isi = array(
            'real' => $a,
            'user' =>  $b,
            'password' => $c,
            'Level' => $e
         );
         $model->edit('user', $where, $isi);
         try {
            $timestamp = now(); // Use Laravel's now() function for current time
            DB::table('activity_log')->insert([
                'user_id' => $user_id,
                'activity' => 'Update',
                'description' => 'User Updated user Data.',
                'timestamp' => $timestamp,
            ]);
        }catch (\Exception $e) {
                // Log the error if activity logging fails
                logger()->error('Failed to log activity for user ID ' . $user_id . ': ' . $e->getMessage());
            }
 return redirect()->to('User');
print_r($isi);
print_r($where);
    } else {
        return redirect()->to('http://localhost:8080/home/error_404');
    }
	}
    
}

