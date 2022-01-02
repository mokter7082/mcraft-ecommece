@extends('layouts.admin-app')
@section('content')
<ul class="breadcrumb">
	<li>
		<i class="icon-home"></i>
		<a href="index.html">Home</a> 
		<i class="icon-angle-right"></i>
	</li>
	<li><a href="#">Orders</a></li>
</ul>
<div class="row-fluid">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon user"></i><span class="break"></span>All Orders</h2>
			<div class="box-icon">
				<?php $segment3 = Request::segment(3);?>
				<select name="" id="ordSelect" class="right-select">
					<option value="pending" {{ $segment3=='pending'?'selected':'' }}>Pending</option>
					<option value="complete" {{ $segment3=='complete'?'selected':'' }}>Complete</option>
					<option value="canceled" {{ $segment3=='canceled'?'selected':'' }}>Canceled</option>
				</select>
			</div>
		</div>
		<div class="box-content">
			<table class="table table-striped table-bordered bootstrap-datatable">
			  	<thead>
				 	<tr>
						<th width="15">ID</th>
						<th>Order Date</th>	
						<th>Payment Method</th>	
						<th>Price Amount</th>
						<th>Delivery Charge</th>			  
						<th width="80">Status</th>
						<th width="150">Actions</th>
				  	</tr>
			  	</thead>   
			  	<tbody>				

			  		@foreach($orders as $order)	   

	          		<?php
			  			$timestamp = strtotime($order->created_at);
			  			$date = date('d F, Y', $timestamp) 
			  		?>
				    <tr>	          	
		          		<td>{{ date('ym', $timestamp) }}{{ $order->id }}</td>
		          		<td> {{ $date }}</td>
		          		<td>{{ $order->payment_method }}</td>
		          		<td>৳ {{ $order->amount }}</td>
		          		<td>৳ {{ $order->delivery_charge }}</td>
						<td class="center">
						@if($order->status==1)
							<span class="label label-info">Pending</span>
						@elseif($order->status==2)
							<span class="label label-success">Complete</span>
						@elseif($order->status==3)
							<span class="label label-warning">Cancled</span>						
						@elseif($order->status==13)
							<span class="label label-warning">Archived</span>
						@endif
						</td>
						<td class="center">
						<a href="{{ route('admin.order.details', $order->id) }}" class="btn btn-info"><i class="halflings-icon white edit"></i></a>
						</td>	
					</tr>			
		      		@endforeach						
				</tbody>
		  	</table>            
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


