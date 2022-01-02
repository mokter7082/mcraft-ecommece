@extends('layouts.app')
@section('pageTitle', 'About Us')
@section('content')
<section class="banner-inner">
	<div class="container">
		<ul class="breadcumbs">
			<li><a href="{{ url('/') }}"> Home</a></li>
			<li><span><i class="fa fa-angle-right"></i></span> <a href="{{ url('/about-us') }}">About Us</a></li>
		</ul>	
	</div>
</section>
<section class="container-main">
	<div class="container"> 
		<p> <strong>Online grocery shopping in Bangladesh</strong> <br>Order online. All your favourite products from the low price online supermarket for grocery home delivery in Dhaka, Kishoreganj and other cities in Bangladesh. Lowest prices guaranteed on all kinds of grocery items and others.</p>

		<p> <strong>One stop shop for all your daily needs</strong> <br>
		 <strong>Romans</strong> is a low-price online supermarket that allows you to order products across categories like grocery, fruits & vegetables, beauty & wellness, household care, baby care and meats & seafood and gets them delivered to your doorstep.</p>
		<p>For best of prices, deals and offers; order online in citiesRight now, The delivery service is operational in 7 arears in Dhaka city: Bashabo, Shahjahanpur, Khilgaon Chowdhury Para, Shantinagar, Baily Road, Shiddheswari and Motijheel. Delivery service will be added in more areas in near future.</p>
	</div>
</section>
@endsection
