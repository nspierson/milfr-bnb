import "bootstrap";
import "../plugins/flatpickr";
import modal from "../plugins/modal";

modal();

const element = document.querySelector('#closeButton')

if (element) {
  element.addEventListener('click',(event) => {
const fin = document.querySelector("#booking-button")
fin.defaultValue = "Booked!"
})

}



