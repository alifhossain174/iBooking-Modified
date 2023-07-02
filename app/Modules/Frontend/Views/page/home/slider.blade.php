<section class="hero-slider">
    {{-- style="max-height: 250px" --}}
    @php
        $slider = get_option('home_slider');
        $galleries = [];
        if (!empty($slider)) {
            $slider = explode(',', $slider);
            if (!empty($slider)) {
                foreach ($slider as $item) {
                    $url = get_attachment_url($item, [1920, 768]);
                    if (!empty($url)) {
                        array_push($galleries, $url);
                    }
                }
            }
        }
        $text_slider = get_translate(get_option('home_slider_text'));
    @endphp

    <style>
        @media only screen and (max-width: 768px) {
            .sliderText {
                font-size: 1.5rem;
            }
        }
    </style>

    <div class="container-fluid no-gutters p-0">
        @if (!empty($galleries))
            <div class="slider" data-plugin="slick">
                @foreach ($galleries as $item)
                    <div class="item ">
                        <img style="width: 100%; height: 400px; filter: brightness(60%)" src="{{ $item }}"
                            alt="home slider">
                    </div>
                @endforeach
            </div>
        @endif

        <div class="search-center">
            <div class="container py-0 px-2">
                @if (!empty($text_slider))
                    <p style="text-shadow: -1px -1px black, -1px 1px black, 1px -1px black, 1px 1px black"
                        class="search-center__title text-center sliderText">{{ $text_slider }}</p>
                @endif
                @include('Frontend::services.search-form')
            </div>
        </div>
    </div>
</section>
