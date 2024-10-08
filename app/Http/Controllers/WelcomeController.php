<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WelcomeController extends Controller
{

    public function __invoke(Request $request)
    {
        // $user = User::find(1);
        // User::query()->create([
        //     'name' => 'Raphael',
        //     'email' => 'raphael@email.com',
        //     'password' => 'jeremias',
        //     // 'password' => bcrypt($request->password),
        // ]);
        
        // $user->email_verified_at = now();
        // $user->save();
        
        // dd($user->email_verified_at->diffForHumans());

        // Auth::login($user);

        return view('welcome');
    }
}
