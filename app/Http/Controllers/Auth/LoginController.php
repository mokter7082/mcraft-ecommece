<?php
namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Cart;
use Auth;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = '/';


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('guest')->except('logout');
        $this->middleware('guest', ['except'=>['logout', 'userLogout']]);
    }

    /**
     * Get the needed authorization credentials from the request.
     *
     * @param  \Illuminate\Http\Request $request
     * @return array
     */
    protected function credentials(Request $request)
    {
       
        if(is_numeric($request->get('email'))){
            return ['mobile'=>$request->get('email'),'password'=>$request->get('password')];
        }
        return $request->only($this->username(), 'password');
    }


    //Logout
    public function userLogout()
    {
        //Clear Cart items
        Cart::destroy();
        
        //logout
        Auth::guard('web')->logout();

        return redirect('/');
    }

    //Check Authentication
    protected function authenticated($request, $user){
        if(!$user->isVerified){
            Auth::guard('web')->logout();
            return redirect()->back()->with('error', 'You didnt confirm your accounts yet.');
            /*return redirect()->route('login')->with('error', 'You didnt confirm your email yet. ');*/
        }
    }

}