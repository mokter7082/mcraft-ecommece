@extends('layouts.app')
@section('pageTitle', 'Welcome to M CRAFT')
@section('content')
	<section class="banner-section">
		<div class="container">
		    <div id="bannerMain" class="carousel slide" data-ride="carousel">
		      <div class="carousel-inner">
		      	@php $i = 1; @endphp
		      	@foreach ($sliders as $slider)
		        <div class="carousel-item <?php echo $i==1?'active':'';?>">
		        	@if($slider->image !='')
						<img src="{{URL::to('images/' . $slider->image)}}" alt="{{$slider->title }}"> 
					@else
		          <img class="d-block w-100" src="{{URL::to('frontend/images/slide-01.jpg')}}" alt="First slide">
		          @endif
		        </div>
		        @php $i++ @endphp
		        @endforeach
		      </div>
		      <a class="carousel-control-prev" href="#bannerMain" role="button" data-slide="prev">Previous</a>
		      <a class="carousel-control-next" href="#bannerMain" role="button" data-slide="next">Next</a>
		    </div>
	    </div>
	</section>

	<section class="container-main">
		<div class="container">
			<section class="latest-collection">
				<div class="section-header">
					<h2>Latest Collection</h2>
				</div>
				<div class="section-content">
					<div class="row">
						@foreach ($products as $product)
						<div class="col-xl-3 col-lg-4 col-sm-6 col-6">
							<div class="product">
								<div class="product-image">
									@if($product->image !='')
										<a href="{{URL::to('detsils/' . $product->id)}}" title="{{ $product->title }}"><img src="{{URL::to('images/' . $product->image)}}" alt="{{$product->title }}"></a>
									@endif
								</div>
								<div class="product-title">
									<a href="{{URL::to('detsils/' . $product->id)}}"><h3>{{ $product->title }}</h3><p>Style - {{ $product->sku }}</p></a>
								</div>
								<div class="product-bottom">
									<div class="product-price">
										@if($product->sale_price !=0)
											<span class="current-price"> Tk. {{ intval($product->sale_price) }}</span>
										@endif
										@if($product->regular_price !=0)
											<span class="old-price"> Tk. {{ intval($product->regular_price) }}</span>
										@endif
									</div>

									@php
										$option = $product->options;
									@endphp
									
									@if($product->stock_qty >0)
										@if(!$option->count())
											<a href="{{ url('/cart/add/'.$product->id)}}" id="product-item-{{ $product->id }}" class="cartbtn addItemCart" data-product="{{ $product->id }}">
												<i class="fa fa-shopping-cart"></i>  Add to Cart
											</a>
										@else
											<a href="{{URL::to('detsils/' . $product->id)}}"  class="cartbtn"><i class="fa fa-shopping-cart"></i>  Add to Cart</a>
										@endif
									@else
										<span class="out-stock"><i class="fa fa-exclamation-triangle"></i>Out of stock </span>
									@endif
								</div>
							</div>
						</div>
						@endforeach
					</div>
					<div class="pagination"> {!! $products->appends(\Input::except('page'))->links() !!}</div>
				</div>
			</section>
			<!-- <section class="special-offer">
			    <div class="row">
			        <div class="col-md-6">
			            <a class="offer-item">
			                <img src="{{URL::to('frontend/images/special-01.jpg')}}" alt="">
			            </a>
			        </div>
			        <div class="col-md-6">
			            <a class="offer-item">
			                <img src="{{URL::to('frontend/images/special-02.jpg')}}" alt="">
			            </a>
			        </div>
			    </div>
			</section> -->
	  </div>
	</section>
	
@endsection

@push('scripts')
<script type="text/javascript">
    $('#bannerCarousel').carousel({
	  interval: 2000
	});
</script>	
@endpush