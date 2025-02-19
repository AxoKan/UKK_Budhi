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
use Barryvdh\DomPDF\Facade\Pdf;

class Website extends Controller
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function diskon()
	{
    echo view('website/diskon/diskon');
	}
}

    
    

    // Redirect or display transaction and details for debugging
   




	


