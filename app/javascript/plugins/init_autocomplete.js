import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search_location');
  if (addressInput) {
    places({ container: addressInput });
  }
  const addressMotherInput = document.getElementById('mother_location');
  if (addressMotherInput) {
    places({ container: addressMotherInput });
  }
};

export { initAutocomplete };
