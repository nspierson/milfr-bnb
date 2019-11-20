import "bootstrap";
import "../plugins/flatpickr";
import 'mapbox-gl/dist/mapbox-gl.css';
import modal from "../plugins/modal";

import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';



const element = document.querySelector('#closeButton')

if (element) {
  element.addEventListener('click',(event) => {
const fin = document.querySelector("#booking-button")
fin.defaultValue = "Booked!"
})

}
modal();
initMapbox();
initAutocomplete({});
