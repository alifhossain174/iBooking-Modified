<?php
/**
 * Top bar 1
 */
?>
@if (get_option('top_bar_display') == 'on')
    <?php
    $btn_text = get_option('top_bar_button_text');
    $btn_url = get_option('top_bar_button_url');
    $code = get_option('top_bar_promo_code');
    $logo = get_logo();
    ?>

    <style>
        @media (max-width: 600px) {
            .topBAR {
                width: 100% !important;
            }
        }
    </style>

    <div id="top-bar-1" class="py-3"
        style="background-image: url('https://www.bookvip.com/assets/theme/images/homepage/jointheMovement_bg.jpg'); background-size: cover; background-position: center; background-repeat: no-repeat; height: 380px">
        <div class="text-center m-auto">
            <img class="pt-5 mb-4" src="https://www.bookvip.com/assets/theme/images/homepage/jointheMovement_mob.png"
                alt="">
            <div class="fs-6 text-white border p-2 m-2 m-auto" style="width: 350px; font-weight: bolder;">
                People have taken advantage of our exclusive offers and travelled on a luxury escape
            </div>
        </div>
        {{-- <div class="top-bar__left">
            <div class="promo d-flex align-items-center">
                {{get_translate(get_option('top_bar_promo_text'))}}
                &nbsp;
                @if ($code)
                    <a class="btn btn-primary btn-sm text-white btn-copy" data-toggle="tooltip"
                       title="{{__('Copy')}}">{{esc_html($code)}}</a>
                @endif
                @if ($btn_text && $btn_url)
                    <a href="{{esc_url($btn_url)}}"
                       class="mx-1 btn btn-sm btn-danger">{{esc_html(get_translate($btn_text))}}</a>
                @endif
            </div>
        </div>
        <div class="top-bar__right">
            @if (is_multi_language())
                @php
                    $dropdown_langs = get_dropdown_language();
                @endphp
                @if ($dropdown_langs)
                    {!! $dropdown_langs !!}
                @endif
            @endif

            @if (is_multi_currency())
              <?php echo get_dropdown_currency(); ?>
            @endif
        </div> --}}

    </div>

    <div class="m-auto p-2" style="max-width: 1150px">

        <h4 style="color: gray; font-weight: bolder; ">See Why Customers Say We Are The Best</h4>
        <img src="https://www.bookvip.com/assets/images/sastatic.png" alt="">

        {{-- <div class="w-75 d-flex px-2d-flex px-2 justify-content-between align-items-center topBAR">

                <div class="px-2">
                    <a href="{{ url('/') }}">
                        @if (!empty($logo))
                            <img src="{{ $logo }}" alt="{{ $site_name }}" height="65px" />
                        @else
                            {{ get_translate($site_name) }}
                        @endif
                    </a>
                </div>

                <div class="text-white">
                    <h6>
                        <img src="https://www.bookvip.com/assets/theme/images/header_tickArrow.png" /> Over 1 million
                        customer
                    </h6>
                    <h6>
                        <img src="https://www.bookvip.com/assets/theme/images/header_tickArrow.png" /> Best Price
                        Guarantee
                    </h6>
                </div>

                <div class="text-white px-2">
                    <div class="text-center m-auto"><img
                            src="https://www.bookvip.com/assets/theme/images/header_likeIcon.png" />
                    </div>
                    <h5 class="text-center" style="color: #fff000">OVER 4.0 MILLION LIKES</h5>
                    <div class="fs-bolder">4,023,260 Facebook Likes and counting.</div>
                    <div class="fs-bolder">People love our offers, you will too!</div>
                </div>
            </div> --}}
    </div>

    <div class="m-auto p-2" style="max-width: 1150px">
        <div class="px-3 mb-5">
            <h5>
                <span style="color:#df1995; font-weight: bolder;">Sign up</span> to our mailing list and qualify for
                discounts
                up to 83% and more
            </h5>
            {{-- <input type="text" placeholder="Email" class="border my-2 p-1 rounded"
                style="width: 350px; border-color: #df1995;">
            <a href="/" style="background-color: #df1995; border-color:#df1995"
                class="btn btn-sm btn-dark gmz-box-popup" data-effect="mfp-zoom-in"></i>{{ __('SEND') }}</a> --}}
        </div>


    </div>
@endif
