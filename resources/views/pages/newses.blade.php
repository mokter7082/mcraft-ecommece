@extends('layouts.app')
@section('pageTitle', 'News & Events')
@section('content')
<section class="banner-inner">
	<div class="container">
		<ul class="breadcumbs">
			<li><a href="{{ url('/') }}"> Home</a></li>
			<li><span><i class="fa fa-angle-right"></i></span> <a href="{{ url('/terms') }}">News & Events</a></li>
		</ul>	
	</div>
</section>
<section class="container-main">
	<div class="container"> 
		<h3 style="display: block; margin: 100px 0 150px 0; text-align: center;">Comming Soon...</h3>	
	</div>
</section>
@endsection

