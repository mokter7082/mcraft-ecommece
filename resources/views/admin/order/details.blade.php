@extends('layouts.admin-app')
@section('content')
<ul class="breadcrumb">
	<li>
		<i class="icon-home"></i>
		<a href="{{ route('admin.dashboard') }}">Home</a> 
		<i class="icon-angle-right"></i>
	</li>
	<li>
		<a href="{{ route('admin.order', 'pending') }}">Order</a> 
		<i class="icon-angle-right"></i>
	</li>
	<li><a href="#">Order Details</a></li>
</ul>
<div class="row-fluid">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon user"></i><span class="break"></span>Order Details</h2>
			<div class="box-icon">
				<a href="{{ route('admin.order', 'pending') }}" class="btn btn-info bck-btn"><i class="icon-backward"></i> Back to Order </a>
			</div>
		</div>
		<div class="box-content">
			<div class="order-details">
				<div class="order-details-top">
					<div class="order-left">
						<h5> To, {{ $delivery->name }}</h5>
						<p>Mobile: {{ $delivery->mobile }} <br>
						Address: {{ $delivery->address }} <br> 
						Area: {{ $delivery->area }}</p>
					</div>
					<div class="order-right">
						<p>Order Date : <?php
	          				$timestamp = strtotime( $orditem->created_at);
	          				echo $date = date('d F, Y', $timestamp);
	          			?> <br>
	          				Delivery Date : {{ $delivery->day_slot }}  <br><!--  {{ $delivery->time_slot }} --> 
	          			</p>

					</div>
					
				</div>
				<div class="order-details-middle">
					<table class="table table-striped table-bordered bootstrap-datatable">
					  	<thead>
						 	<tr>
								<th width="15">#</th>
								<th>Description</th>
								<th width="150">Quantity</th>
								<th width="150">Price</th>
								<th width="150">Total</th> 
						  	</tr>
					  	</thead>   
					  	<tbody>
					  		@if(is_object($ordpitem))
					  		@foreach($ordpitem as $key => $order)
				          	<tr>	          	
				          		<td>{{$key+1}}</td>
				          		<td>
				          			@if ($order->image !='')
									<img width="50" src="{{ url('images/'.$order->image) }}" alt="" class="float-left">
									@endif
									<p> {{ $order->name }}

									@if($order->product)
										<br/>Style : {{ $order->product->sku }}
									@endif

									@if( $order->size !='')
									<br/>Size : {{ $order->size }} 
									@endif 

									@if( $order->color !='')
									<br/>Color : {{ $order->color }}
									@endif 
									</p>       		
								</td>
								<td>{{ $order->qty }}</td>
								<td>{{ $order->price }}</td>
								<td>{{ number_format($order->qty * $order->price, 2, '.', ',') }}</td>	
							</tr>									
				      		@endforeach	
				      		@endif					
						</tbody>
						<tfoot>
							<tr>
								<td rowspan="4" colspan="2">
									@switch($orditem->status)
									    @case(1)
									        <div class="alert  alert-warning">
										  		<strong>Note: </strong>This Order is Pending
											</div>
									    @break

									    @case(2)
									        <div class="alert alert-success">
										  		<strong>Note: </strong>This Order is Completed
											</div>
									    @break

									    @case(3)
									        <div class="alert alert-error">
										  		<strong>Note: </strong> This order is Cancled
											</div>
									    @break

									    @case(4)
									        <div class="alert alert-error">
										  		<strong>Note: </strong> Payment Disqualified
											</div>
									    @break

									    @case(13)
									        <div class="alert alert-info">
										  		<strong>Note: </strong> This order is Deleted
											</div>
									    @break

									    @case(25)
									        <div class="alert  alert-error">
										  		<strong>Note: </strong> This order is Refunded
											</div>
									    @break

									    @default
									        <div class="alert alert-info">
										  		<strong>Note: </strong> This order is pending to complete
											</div>
										@endswitch

									@if($orditem->status ==1 )
										<div class="action-btn-group">
											<form id="orderC{{ $orditem->id }}" action="{{ route('admin.order.update', $orditem->id) }}" method="POST">
												@csrf
												<input type="hidden" name="status" value="2">
												<button type="submit" class="btn btn-success" title="Click to Complete this order"><i class="halflings-icon white check"></i> Complete this order</button>
											</form>
											<form id="orderC{{ $orditem->id }}" action="{{ route('admin.order.update', $orditem->id) }}" method="POST">
												@csrf
												<input type="hidden" name="status" value="3">
												<button type="submit" class="btn btn-warning" title="Click to Cancel this order"><i class="halflings-icon white trash"></i> Cancel this order</button>
											</form>										
										</div>
									@endif

								</td>
								<td colspan="2" style="text-align: right;"><strong> Sub Total</strong></td>
								<td>{{ number_format($orditem->amount, 2, '.', ',') }}</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right;"><strong> Delivery Charge</strong></td>
								<td>{{ number_format($orditem->delivery_charge, 2, '.', ',') }}</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right;"><strong> Discount</strong></td>
								<td>{{ number_format($orditem->discount, 2, '.', ',') }}</td>
							</tr>
							<tr>
								<td colspan="2" style="text-align: right;"><strong> Total Price</strong></td>
								<td>{{ number_format($orditem->amount + $orditem->delivery_charge - $orditem->discount, 2, '.', ',') }}</td>
							</tr>
						</tfoot>
				  	</table> 
				</div>
			</div>    
		</div>
	</div><!--/span-->			
</div><!--/row-->
@endsection

@push('scripts')
<script>
$(function(){
  // bind change event to select
  $('#ordSelect').on('change', function () {
      var url = $(this).val(); // get selected value
      if (url) { // require a URL
          window.location = '{{ URL::to('admin/order') }}/'+ url; // redirect
      }
      return false;
  });
});	
</script>
@endpush


