import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {
  altInput: true,
  allowInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})],
  onClose: [function(){
    const priceAssessment = document.getElementById('price-assessment')
    const dates = document.getElementById('range_start').value;
    let duration = 0
    if (dates.includes('to')) {
      const startDate = dates.split(' to ')[0];
      const endDate = dates.split(' to ')[1];
      duration = (Date.parse(endDate) - Date.parse(startDate)) / (1000 * 3600 * 24) + 1;
    } else {
      const startDate = dates;
      const endDate = dates;
      duration = 1;
    }
    const price = document.getElementById('price').innerHTML;
    priceAssessment.style.opacity = 0;
    priceAssessment.style.backgroundColor = "yellow";
    setTimeout(function(){
      priceAssessment.innerHTML = `${Number.parseInt(price, 10) * duration} €`;
      priceAssessment.style.opacity = 1;
      priceAssessment.style.backgroundColor = "transparent";
    } ,500)
  }]
})
