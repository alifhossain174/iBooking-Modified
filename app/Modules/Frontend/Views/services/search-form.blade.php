@php
    $all_services = get_services_enabled();
    $srvc = [];
    if(in_array(GMZ_SERVICE_TOUR, $all_services)){
        array_push($srvc, GMZ_SERVICE_TOUR);
    }
@endphp
@if(count($srvc) > 0)
<div class="search-form-wrapper">
    @if(count($srvc) > 1)
    <ul class="nav nav-tabs" id="searchFormTab" role="tablist">
        
        @if(in_array(GMZ_SERVICE_TOUR, $srvc))
            @php
                if(!in_array('hotel', $srvc) && !in_array('apartment', $srvc) && !in_array('car', $srvc) && !in_array('space', $srvc)){
                    $tour_active = 'active';
                }else{
                    $tour_active = '';
                }
            @endphp
            <li class="nav-item">
                <a class="nav-link {{$tour_active}}" id="tour-search-tab" data-toggle="tab" href="#tour-search" role="tab" aria-controls="tour-search" aria-selected="false"><i class="fal fa-map-marked"></i> {{__('Tour')}}</a>
            </li>
        @endif

    </ul>
    @endif
    
    <div class="tab-content" id="searchFormTab">
        
        @if(in_array(GMZ_SERVICE_TOUR, $srvc))
            @php
                if(!in_array('hotel', $srvc) && !in_array('apartment', $srvc) && !in_array('car', $srvc)  && !in_array('space', $srvc)){
                    $tour_active = 'show active';
                }else{
                    $tour_active = '';
                }
            @endphp
            <div class="tab-pane fade {{$tour_active}} tour-search-form" id="tour-search" role="tabpanel" aria-labelledby="tour-search-tab">
                @include('Frontend::services.tour.search-form')
            </div>
        @endif

    </div>
</div>
@endif