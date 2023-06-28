@php
    $img = get_attachment_url($item->thumbnail_id, [360, 240]);
    $title = get_translate($item->post_title);
    $location = get_translate($item->location_address);
        $comments = get_comment_list($item['id'], [
        'number' => get_comment_per_page(),
        'page' => request()->get('review_page', 1),
        'type' => GMZ_SERVICE_TOUR,
    ]);

    $integerRating = $item['rating'];
    $floatRating = (float) $integerRating;
@endphp

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
        background-color: #df1995 !important;
        padding: 12px 10px;
        border-radius: 0px 0px 0px 10px;
        z-index: 100;
    }

    .tour-item__price ._retail{
        font-size: 0.8rem !important;
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
        background: #df1995 !important;
        color: white;
        border: none;
    }
</style>

<div class="tour-item tour-item--grid" data-plugin="matchHeight">
    <div class="tour-item__thumbnail">
        @php echo add_wishlist_box($item->id, GMZ_SERVICE_TOUR); @endphp
        <a href="{{get_tour_permalink($item->post_slug)}}">
            <img src="{{$img}}" alt="{{$title}}">
        </a>


        @if(!empty($title))
        <p class="tour-item__location py-3">
            @if(!empty($floatRating))
            <span style="background-color: #df1995" class="px-2 rounded">
                {{ $floatRating }}
            </span>
            @endif
            @if(!empty($comments->total()))
            <span class="px-1">{{$comments->total()}} Reviews |</span>
            @endif
            <span class="px-1">{{ $item->tour_type }}- star hotel</span>
            {{-- &nbsp;&nbsp; <i class="fal fa-calendar-alt"></i> {{get_translate($item->duration)}} 
            &nbsp;&nbsp; <i class="fal fa-users"></i> {{sprintf(__('%s people'), $item->group_size)}} --}}
        </p>
        @endif
        @action('gmz_tour_single_after_thumbnail', $item)
    </div>
    <div class="tour-item__details">
        {{-- @if($item->is_featured == 'on')
            <span class="tour-item__label">{{__('Featured')}}</span>
        @endif --}}

        @if(!empty($location))
        <span class="tour-item__label" style="background: rgb(128, 128, 128, .3)"><i class="fas fa-map-marker-alt mr-2"></i>{{$location}}</span>
        @endif
        
        {{-- <div class="tour-item__meta">
            <div class="meta-item duration">
                <i class="fal fa-calendar-alt"></i>
                <div class="duration-info">
                    <span class="label">{{__('Duration')}}</span>
                    <span class="value">{{get_translate($item->duration)}}</span>
                </div>
            </div>
            <div class="meta-item group-size">
                <i class="fal fa-users"></i>
                <div class="group-size-info">
                    <span class="label">{{__('Group Size')}}</span>
                    <span class="value">{{sprintf(__('%s people'), $item->group_size)}}</span>
                </div>
            </div>
        </div> --}}
        <div class="row">
            <div class="col-lg-9">
                <h3 class="tour-item__title">
                    <a href="{{get_tour_permalink($item->post_slug)}}">
                        <span> {{$title}} </span> 
                    </a>
                </h3>
            </div>
            <div class="col-lg-3 pl-0">
                <a class="btn btn-primary tour-item__view-detail d-inline-block" href="{{get_tour_permalink($item->post_slug)}}">{{__('View Detail ')}}</a>
            </div>
        </div>  
        {{-- <div class="d-flex justify-content-between align-items-center">
            
        </div> --}}
        <div class="tour-item__price">
            @if((convert_price($item['infant_price'])) != '$0.00')
            <span class="_retail" style="text-decoration: line-through">
                {{convert_price($item['adult_price'])}}</span>
            <div class=""><span class="_retail" style="font-size: 1rem !important">{{convert_price($item['infant_price'])}}</span></div>
            @else
            <span class="_retail">{{convert_price($item['adult_price'])}}</span>
            @endif
        </div>
    </div>
</div>