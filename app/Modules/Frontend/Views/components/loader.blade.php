<?php
$logo = get_logo();
?>
<div class="gmz-loader @if(isset($page)) gmz-page-loader @endif">
    {{-- <div class="loader-inner">
        <div class="spinner-grow text-info align-self-center loader-lg"></div>
    </div> --}}
    <div class="d-flex justify-content-center align-items-center" style="background-color: #df1995; height: 100vh ">
        <div class="">
            <div class="py-5 text-center">
                @if (!empty($logo))
                    <img src="{{ $logo }}" alt="YesToVacations" height="150px" />
                @endif
            </div>
            <div class="text-white pt-5">
                <h5 style="font-weight: 500"> <i class="fal fa-check-circle"></i> <span class="px-2">Over ! Million Customers</span></h5>
                <h5 class="py-2" style="font-weight: 500"> <i class="fal fa-check-circle"></i> <span class="px-2">Free Cancelation/ Reschedule</span></h5>
                <h5 style="font-weight: 500"> <i class="fal fa-check-circle"></i> <span class="px-2">24/7 Customer Support</span></h5>
            </div>
        </div>
    </div>
</div>
