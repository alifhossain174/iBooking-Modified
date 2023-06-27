<!DOCTYPE html>
<html lang="{{get_current_language()}}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    @php
        $favicon = get_favicon();
        if($favicon)
            echo '<link rel="shortcut icon" type="image/png" href="'. $favicon .'"/>';
    @endphp


    @php
        $page_title = seo_page_title();
        if($page_title){
            $title_tag =  $page_title;
        }else{
            $site_name = get_translate(get_option('site_name', 'iBooking'));
            $seo_separator_title = get_seo_title_separator();
            $title_tag = $site_name . ' ' . $seo_separator_title;
        }
    @endphp<title>@php echo $title_tag @endphp @yield('title')</title>

    {!! seo_meta(); !!}
    @php init_header(); @endphp

    <style>
        .tour-item{
            position: relative;
            padding: 0px;
            border: 1px solid #ddd;
            border-radius: 0px;
            min-height: 295px !important;
            /* height: auto !important; */
        }

        .tour-item--grid .tour-item__thumbnail{
            border-radius: 0px;
        }

        .tour-item__price{
            position: absolute;
            top: 0;
            right: 0;
            background-image: linear-gradient(135deg, #ff690f 0%, #e8381b 100%);
            padding: 12px 10px;
            border-radius: 0px 0px 0px 10px;
            z-index: 100;
        }

        .tour-item__price ._retail{
            font-size: 1.2rem !important;
            font-weight: 600 !important;
            color: white !important;
            text-shadow: 1px 1px 2px black;
        }

        .tour-item--grid .tour-item__location {
            background: #00000036;
            display: inline-block;
            position: absolute;
            width: 1000%;
            color: #fff;
            padding: 5px 10px;
            bottom: -14px;
            left: 0px;
            font-size: 1rem;
            border-radius: 0px;
            font-weight: 500;
        }

        .tour-item__details{
            padding: 15px !important;
        }
        
        .tour-item__title{
            font-size: 1.2rem;
            margin-bottom: 10px;
            margin-top: 0px;
            font-weight: 600;
        }

        .tour-item__view-detail{
            font-size: 12px;
            font-weight: 600;
            border-radius: 4px;
            padding: 5px 2px;
            width: 100%;
            background: #33b325 !important;
            color: white;
        }
    </style>
</head>
<body class="body @yield('class_body') {{rtl_class()}}">
@include('Frontend::components.admin-bar')
@include('Frontend::components.top-bar-1')
@include('Frontend::components.header')
<div class="site-content">
    @yield('content')
</div>
@include('Frontend::components.footer')
@php init_footer(); @endphp
</body>
</html>
