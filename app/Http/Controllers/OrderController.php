<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Order;
use App\Delivery;
use App\Ordproduct;
use App\Product;
use App\Option;
use App\User;
use App\SendSMS;

class OrderController extends Controller
{   

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($status)
    {
        switch ($status) {
            case 'pending':
                $status = 1;
                break;
            case 'complete':
               $status = 2;
                break;
            case 'canceled':
               $status = 3;
                break;
        }
        $orders = Order::where('status',$status)->orderBy('id', 'DESC')->get();
        return view('admin.order.list')->with('orders', $orders);
    }

    


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) 
    {

        $orditem = Order::where('id', $id)->first(); 

        //print_r($orditem->delivery);

        $user = User::select('name', 'mobile')->where('id', $orditem->user_id)->first();

        $delivery = Delivery::where('id', $orditem->delivery_id)->where('user_id', $orditem->user_id)->first();

        $ordpitem = Ordproduct::where('order_id', $id)->get();
             
        return view('admin.order.details', compact('orditem', 'user', 'delivery', 'ordpitem'));
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        request()->validate([
            'status' => 'required',
        ]);

        $order = Order::findOrFail($id);
        $order->status  = $request->status;
        

        if ($request->status == 2) {

            $ordproducts = Ordproduct::select('id', 'product_id', 'optid', 'qty')->where('order_id', '=', $order->id)->get();

            foreach ($ordproducts as $ordproduct) {

                if ($ordproduct->optid !='') {
                    $option = Option::findOrFail($ordproduct->optid);
                    $option->quantity = $option->quantity - $ordproduct->qty;
                    $option->save();
                }
                $product = Product::findOrFail($ordproduct->product_id);
                $product->stock_qty = $product->stock_qty - $ordproduct->qty;
                $product->save();                
            } 
        }

        $result = $order->save();
        
        $timestamp = strtotime($order->created_at);

        $date = date('d F, Y', $timestamp);

        $mobile ='+88'. User::select('mobile')->where('id', $order->user_id)->first()->mobile;

        $delivery = Delivery::findOrFail($order->delivery_id);

        /*if ($result && $request->status == 3) {

            $msg = 'Your M CRAFT Order '. date('ym', $timestamp).$order->id .' has been cancled. If you need any help please contact : Helpline: 01712 345 678 ';

        }else*/
        if($result && $request->status == 2) {

            $msg = 'Your M CRAFT Order '. date('ym', $timestamp).$order->id .' has been confirm and will be delivered on your preferred delivery time: '. $delivery->day_slot .' ( '. $delivery->time_slot .'). Helpline: 01712 345 678 ';

            $MSG = new SendSMS();

            $msgResponse = $MSG ->MessageSend($mobile, $msg);
        }      

        return Redirect::back()->with('success','Order updated successfully');
    }

}
