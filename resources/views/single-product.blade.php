@extends('layouts.app')
@section('pageTitle', $product->title)

@section('content')
<style>
.mobilefix{ 
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    position: absolute;
    z-index: 100000000; 
    display: block;
    background: transparent;
}
 
@media screen and (min-width: 768px) {
	.mobilefix{ display: none; }
}
</style>
<section class="banner-inner">
	<div class="container">
		 {!! RomansHelper::get_breadcumb() !!} 		
	</div>
</section>
<section class="container-main">
	<div class="container">
		<section class="details-section">
			<div class="section-content"> 
				<div class="row"> 			
					<div class="col-sm-6">  
						<div class="row">
							@if($product->image !='')		
							<div class="col-md-12">
								<div class="detail-img">
									<a href="{{URL::to('images/' . $product->image)}}" data-fancybox class="przome"><i class="fa fa-search" aria-hidden="true"></i></a>
									<a href="{{URL::to('images/' . $product->image)}}" data-fancybox class="zomeImg">
										<span class="mobilefix"></span>
										<img class="xzoom4" id="xzoom-fancy" src="{{URL::to('images/' . $product->image)}}" xoriginal="{{URL::to('images/' . $product->image)}}" /> 
									</a>
								</div>

								<div class="imgallery xzoom-thumbs"> 
									<a href="{{URL::to('images/' . $product->image)}}"><img class="xzoom-gallery4" width="80" src="{{URL::to('images/' . $product->image)}}"  xpreview="{{URL::to('images/' . $product->image)}}" title="{{$product->title}}"></a>  

									@foreach($product->images as $imgs)
									<a href="{{URL::to('images/' . $imgs->filename)}}"><img class="xzoom-gallery4" width="80" src="{{URL::to('images/' . $imgs->filename)}}"  xpreview="{{URL::to('images/' . $imgs->filename)}}" title="{{$product->title}}"></a>  
									 @endforeach
								</div> 
							</div>
							@endif
							<div class="col-md-12">
								<div class="detail-img" style="border: none;">	
								<div class="product-name">
									<h2>{{$product->title }}</h2> 
									<h4>STYLE CODE - {{$product->sku }}</h4>
								</div>							
								<div class="p-price" id="prodPrice">
									@if($product->sale_price !=0)
										<span class="current-price"> Tk. {{ intval($product->sale_price) }}</span>
									@endif
									@if($product->regular_price !=0)
										<span class="old-price"> Tk. {{ intval($product->regular_price) }}</span>
									@endif
								</div>
								</div>
							</div>
						</div> 
					</div>
					
					<div class="col-sm-6">
						<div class="product-name">
							<h2>{{$product->title }}</h2> 
							<h4>STYLE CODE - {{$product->sku }}</h4>
						</div>							
						<div class="p-price" id="prodPrice">
							@if($product->sale_price !=0)
								<span class="current-price"> Tk. {{ intval($product->sale_price) }}</span>
							@endif
							@if($product->regular_price !=0)
								<span class="old-price"> Tk. {{ intval($product->regular_price) }}</span>
							@endif
						</div>

						@if($product->stock_qty >0)
				
				 
						<div class="product_variants"> 
							@php
								$size_varient = array();
								$color_varient = array();
								$size_qty = array();
								foreach ($product->options as $options) {  
									if ( $options->size !='' && !in_array(ucfirst($options->size), $size_varient)) {
										$size_varient[$options->size] = ucfirst($options->size);
										$size_qty[$options->size] = ucfirst($options->quantity);
									}
									if ( $options->color !='' && !in_array(ucfirst($options->color), $color_varient) && $options->quantity > 0) {
										$color_varient[$options->color] = ucfirst($options->color);
									}									
								}
							@endphp

							{!! Form::open(['route'=>'cart.submit', 'class'=>'form-cart']) !!}

							<div class="size-color-varient">

								@if(!empty($size_varient))

								@php
								//$size_varient =  array('' => 'Select Size') + $size_varient;
								@endphp

								<div class="size-verient {{ $errors->has('size') ? 'has-error' : '' }}">
		 							{!! Form::label('size', 'Select Size *', array('class' => 'control-label')) !!}

		 							<div class="size-area">
		 								@foreach($size_varient as $size_key => $size)
			 								<label for="{{ $size }}" class="size-level @if($size_qty[$size_key] > 0) available @endif">
			 									<input type="radio" id="{{ $size }}" name="size" value="{{ $size }}">  {{ $size }}
			 								</label>  
		 								@endforeach
		 							</div>
		 							
		 							{{--  Form::select('size', $size_varient, old('size'), ['class'=>'form-control', 'data-rel'=>'chosen']) --}}
		 							<span class="text-danger">{{ $errors->first('size') }}</span>
								</div>
								@endif

								@if(!empty($color_varient))
									@php
										$color_varient =  array('' => 'Select Color') + $color_varient;
									@endphp
									<div class="color-verient {{ $errors->has('color') ? 'has-error' : '' }}">
			 							{!! Form::label('color', 'Select Color *', array('class' => 'control-label')) !!}
			 							{!! Form::select('color', $color_varient, old('color'), ['class'=>'form-control', 'data-rel'=>'chosen']) !!}
			 							<span class="text-danger">{{ $errors->first('color') }}</span>
									</div>
								@endif
							</div>
							<div class="size-color-varient">
				              	<div class="quickview_plus_minus">
				                  	<span class="control_label">Quantity</span>
				                  	<div class="quickview_plus_minus_inner">
				                      	<div class="cart-plus-minus">
				                      		<div class="dec qtybutton" id="dec">-</div>
				                        	<input type="text" value="1" name="qty" class="cart-plus-minus-box" id="qtyval">
				                      		<div class="inc qtybutton" id="inc">+</div>
				                  		</div>
				                  	</div>
				                  	<span class="text-danger">{{ $errors->first('qty') }}</span>
				              	</div>

		                      	<div class="add_button">
		                          <button type="submit" class="add_button">Add to cart</button> 
		                     	</div>
		                    </div>
								<input type="hidden" name="pid" value="{{ $product->id }}">

            				{!! Form::close() !!}
            			</div>
            			@else
            			 <div class="product-outstock">
            			 	<span class="outstock"><i class="fa fa-close"></i> Out of Stock </span>
            			 </div>
            			@endif

						@if($product->options && (!empty($color_varient) || !empty($size_varient)))
			            <div class="product-availability" id="availibality">
			            	@if ($product->status==1)
			                <span class="availability"><i class="fa fa-check"></i> In stock </span>
			                @endif   
			            </div>
			            @elseif($product->stock_qty >0)
			            <div class="product-availability" id="availibality">
			            	@if ($product->status==1)
			                <span class="availability"><i class="fa fa-check"></i> In stock </span>
			                @endif   
			            </div>
			            @endif

        				<div class="pr-description">
							{!! $product->detail !!}
						</div>						
					</div>
				</div>
			</div>

			@if( !empty($related))
			<div class="section-content">
				<div class="related-products">
					<div class="section-header">
						<h2>Related Products</h2>
					</div>
					<div class="row">
						@foreach($related as $rproduct)
							<div class="col-xl-3 col-lg-4 col-sm-6 col-6">
								<div class="product">
									<div class="product-img">
										@if($rproduct->image !='')
											<a href="{{URL::to('detsils/' . $rproduct->id)}}"  title="{{$rproduct->title }}"> <img src="{{URL::to('images/' . $rproduct->image)}}" alt="{{$rproduct->title }}">
											</a>
										@endif								
									</div>
									<div class="product-title">
										<a href="{{URL::to('detsils/' . $rproduct->id)}}"><h3>{{ $rproduct->title }}</h3><p>Style - {{ $rproduct->sku }}</p></a>					
									</div>
									<div class="product-bottom">
										<div class="product-price">
											@if($rproduct->sale_price !=0)
												<span class="current-price">Tk. {{ intval($rproduct->sale_price) }}</span>
											@endif
											@if($rproduct->regular_price !=0)
												<span class="old-price">Tk. {{ intval($rproduct->regular_price) }}</span>
											@endif
										</div>

										@php
										$option = $rproduct->options;
										@endphp
										
										@if($rproduct->stock_qty >0)
											@if(!$option->count())
												<a href="{{ url('/cart/add/'.$rproduct->id)}}" id="product-item-{{ $rproduct->id }}" class="cartbtn addItemCart" data-product="{{ $rproduct->id }}">
													<i class="fa fa-shopping-cart"></i>  Add to Cart
												</a>
											@else
												<a href="{{URL::to('detsils/' . $rproduct->id)}}"  class="cartbtn"><i class="fa fa-shopping-cart"></i>  Add to Cart</a>
											@endif
										@else
											<span class="out-stock"><i class="fa fa-exclamation-triangle"></i>Out of stock </span>
										@endif

									</div>
								</div>
							</div>
						@endforeach	
					</div>								
				</div>
			</div>
			@endif	
		</section>
	</div>
</section>
@endsection

@push('scripts')
	<script>
		$('.size-level').click(function(e) {
			$('.size-area label').removeClass('selected');
			$(this).addClass('selected');
		})
	</script>
@endpush
