const showPurchase = () => {
  const btn = document.getElementById('button-purchase');
  const card = document.getElementById('purchase-card');
  const msg = document.getElementById('purchase-stimulus');
  if (btn) {
    btn.addEventListener('click', (event) => {
      event.preventDefault();
      btn.setAttribute('disabled', 'true');
      msg.classList.remove('display_none');
      card.classList.remove('display_none');
      window.scrollTo({
        top: (card.offsetTop + card.offsetHeight),
        behavior: 'smooth'
      });  
    });
  }
};


export { showPurchase };