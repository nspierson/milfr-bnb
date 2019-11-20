import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
initAutocomplete({});
