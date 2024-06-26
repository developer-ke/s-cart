{{-- 
  Use sc_config with storeId, 
  dont use sc_config_admin because will switch the store to the specified store Id
--}}

<style>
    < link rel = "stylesheet" href = "https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity = "sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin = "" />
</style>
<div class="row">
    <div class="col-md-5">
        <table class="table table-hover table-bordered">
            <tbody>
                <tr>
                    <td>{{ sc_language_render('store.logo') }}</td>
                    <td>
                        <div class="input-group">
                            <input type="hidden" id="logo" name="logo" value="{{ $store->logo }}"
                                class="form-control input-sm logo" placeholder="" />
                        </div>
                        <div id="preview_image" class="img_holder">{!! sc_image_render($store->logo, '100px', '', 'Logo') !!}</div>
                        <a data-input="logo" data-preview="preview_image" data-type="logo" class="lfm pointer">
                            <i class="fa fa-image"></i> {{ sc_language_render('product.admin.choose_image') }}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td>{{ sc_language_render('store.icon') }}</td>
                    <td>
                        <div class="input-group">
                            <input type="hidden" id="icon" name="icon" value="{{ $store->icon }}"
                                class="form-control input-sm icon" placeholder="" />
                        </div>
                        <div id="preview_icon" class="img_holder">{!! sc_image_render($store->icon, '100px', '', 'icon') !!}</div>
                        <a data-input="icon" data-preview="preview_icon" data-type="logo" class="lfm pointer">
                            <i class="fa fa-image"></i> {{ sc_language_render('product.admin.choose_image') }}
                        </a>
                    </td>
                </tr>

                <tr>
                    <td><i class="fas fa-phone-alt"></i> {{ sc_language_render('store.phone') }}</td>
                    <td><a href="#" class="editable-required editable editable-click" data-name="phone"
                            data-type="number" data-pk="" data-source="" data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.phone') }}" data-value="{{ $store->phone }}"
                            data-original-title="" title="">{{ $store->phone }}</a></td>
                </tr>

                <tr>
                    <td><i class="fas fa-phone-square"></i> {{ sc_language_render('store.long_phone') }}</td>
                    <td><a href="#" class="editable-required editable editable-click" data-name="long_phone"
                            data-type="text" data-pk="" data-source="" data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.long_phone') }}"
                            data-value="{{ $store->long_phone }}" data-original-title=""
                            title="">{{ $store->long_phone }}</a></td>
                </tr>

                <tr>
                    <td><i class="far fa-calendar-alt"></i> {{ sc_language_render('store.time_active') }}</td>
                    <td><a href="#" class="editable-required editable editable-click" data-name="time_active"
                            data-type="textarea" data-pk="" data-source="" data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.time_active') }}"
                            data-value="{{ $store->time_active }}" data-original-title=""
                            title="">{{ $store->time_active }}</a></td>
                </tr>

                <tr>
                    <td><i class="fas fa-map-marked"></i> {{ sc_language_render('store.address') }}</td>
                    <td><a href="#" class="editable-required editable editable-click" data-name="address"
                            data-type="text" data-pk="" data-source="" data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.address') }}" data-value="{{ $store->address }}"
                            data-original-title="" title="">{{ $store->address }}</a></td>
                </tr>
                <tr>
                    <td><i class="fas fa-location-arrow"></i></span> {{ sc_language_render('store.office') }}</td>
                    <td><a href="#" class="editable-required editable editable-click" data-name="office"
                            data-type="text" data-pk="" data-source="" data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.office') }}" data-value="{{ $store->office }}"
                            data-original-title="" title="">{{ $store->office }}</a></td>
                </tr>
                <tr>
                    <td><i class="fas fa-warehouse"></i> {{ sc_language_render('store.warehouse') }}</td>
                    <td><a href="#" class="editable-required editable editable-click" data-name="warehouse"
                            data-type="text" data-pk="" data-source="" data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.warehouse') }}"
                            data-value="{{ $store->warehouse }}" data-original-title=""
                            title="">{{ $store->warehouse }}</a></td>
                </tr>

                <tr>
                    <td><i class="fas fa-envelope"></i> {{ sc_language_render('store.email') }}</td>
                    <td><a href="#" class="editable-required editable editable-click" data-name="email"
                            data-type="text" data-pk="" data-source="" data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.email') }}" data-value="{{ $store->email }}"
                            data-original-title="" title="">{{ $store->email }}</a></td>
                </tr>

                <tr>
                    <td><i
                            class="nav-icon  fas fa-object-ungroup "></i>{{ sc_language_render('store.admin.template') }}
                    </td>
                    <td>
                        <a href="#" class="editable-required editable editable-click" data-name="template"
                            data-type="select" data-pk="" data-source="{{ json_encode($templates) }}"
                            data-url="{{ $urlUpdateStore }}"
                            data-title="{{ sc_language_render('store.admin.template') }}"
                            data-value="{{ $store->template }}" data-original-title="" title=""></a>
                    </td>
                </tr>

                </td>
                </tr>

            </tbody>
        </table>
    </div>
    @php
        $descriptions = $store->descriptions->keyBy('lang');
    @endphp
    <div class="col-md-7">
        <table class="table table-hover table-bordered">
            <tbody>
                <tr>
                    <td>{{ sc_language_render('store.title') }}</td>
                    <td>
                        @foreach ($descriptions as $codeLang => $infoDescription)
                            @php
                                if (!in_array($codeLang, array_keys($languages->toArray()))) {
                                    continue;
                                }
                            @endphp
                            {{ $languages[$codeLang]->name }} <img src="{{ sc_file($languages[$codeLang]->icon) }}"
                                style="width:20px">:<br>
                            <i><a href="#" class="editable-required editable editable-click"
                                    data-name="{{ 'title__' . $codeLang }}" data-type="text" data-pk=""
                                    data-source="" data-url="{{ $urlUpdateStore }}"
                                    data-title="{{ sc_language_render('store.title') }}"
                                    data-value="{{ $infoDescription['title'] }}" data-original-title=""
                                    title="">{{ $infoDescription['title'] }}</a></i><br>
                            <br>
                        @endforeach
                    </td>
                </tr>

                <tr>
                    <td>{{ sc_language_render('store.keyword') }}</td>
                    <td>
                        @foreach ($descriptions as $codeLang => $infoDescription)
                            @php
                                if (!in_array($codeLang, array_keys($languages->toArray()))) {
                                    continue;
                                }
                            @endphp
                            {{ $languages[$codeLang]->name }} <img src="{{ sc_file($languages[$codeLang]->icon) }}"
                                style="width:20px">:<br>
                            <i><a href="#" class="editable-required editable editable-click"
                                    data-name="{{ 'keyword__' . $codeLang }}" data-type="text" data-pk=""
                                    data-source="" data-url="{{ $urlUpdateStore }}"
                                    data-title="{{ sc_language_render('store.keyword') }}"
                                    data-value="{{ $infoDescription['keyword'] }}" data-original-title=""
                                    title="">{{ $infoDescription['keyword'] }}</a></i><br>
                            <br>
                        @endforeach
                    </td>
                </tr>

                <tr>
                    <td>{{ sc_language_render('store.description') }}</td>
                    <td>
                        @foreach ($descriptions as $codeLang => $infoDescription)
                            @php
                                if (!in_array($codeLang, array_keys($languages->toArray()))) {
                                    continue;
                                }
                            @endphp
                            {{ $languages[$codeLang]->name }} <img src="{{ sc_file($languages[$codeLang]->icon) }}"
                                style="width:20px">:<br>
                            <i><a href="#" class="editable-required editable editable-click"
                                    data-name="{{ 'description__' . $codeLang }}" data-type="text" data-pk=""
                                    data-source="" data-url="{{ $urlUpdateStore }}"
                                    data-title="{{ sc_language_render('store.description') }}"
                                    data-value="{{ $infoDescription['description'] }}" data-original-title=""
                                    title="">{{ $infoDescription['description'] }}</a></i><br>
                            <br>
                        @endforeach
                    </td>
                </tr>

            </tbody>
        </table>
        <div class="row">
            <div class="col-12 mx-auto">
                <div class="card h-100">
                    <div class="card-header">
                        <h5 class="card-title text-capitalize">Location</h5>
                    </div>
                    <div class="card-body p-0">
                        <div id="map" style="height: 400px;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
<script>
    try {
        // // Create a map centered at a specific location
        // var map = L.map('map').setView([51.505, -0.09], 13);

        // // Add a tile layer (e.g., OpenStreetMap)
        // L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        //     attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        // }).addTo(map);

        // // Define the coordinates of the points
        // var pointA = new L.LatLng(51.5, -0.09);
        // var pointB = new L.LatLng(51.51, -0.1);

        // // Create a polyline from pointA to pointB and add it to the map
        // var polyline = L.polyline([pointA, pointB], {
        //     color: 'red'
        // }).addTo(map);

        // // Zoom the map to the polyline
        // map.fitBounds(polyline.getBounds());

        const longitude = {{ $store->longitude }};
        const latitude = {{ $store->latitude }};
        var map = L.map('map').setView([latitude, longitude], 23);
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(map);

        L.marker([latitude, longitude]).addTo(map)


    } catch (error) {
        console.log(error);
    }
</script>
