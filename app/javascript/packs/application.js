import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();

$(function () {
 $('[data-toggle="tooltip"]').tooltip()
})
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
