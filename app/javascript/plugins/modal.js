const modal = () => {
  const element = document.querySelector('#booking-button')
  if (element) {
    element.addEventListener('click',(event) => {
      const date = document.querySelector('#range_start').value.split(' to ');
      document.querySelector('#modalStart').innerHTML = date[0];
      document.querySelector('#modalEnd').innerHTML = date[1];
      const prix = document.querySelector('#price-assessment');
      document.querySelector('#modalPrix').innerHTML = prix.innerHTML;
    })
  };
}
export default modal;
