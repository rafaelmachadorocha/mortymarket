const showPurchase = () => {
  const btn = document.getElementById('button-purchase');
  const card = document.getElementById('purchase-card');
  btn.addEventListener('click', (event) => {
    event.preventDefault();
    card.classList.remove('display_none')
    window.scrollTo({
      top: (card.parentNode.offsetTop + card.offsetHeight),
      behavior: 'smooth'
    });  
  });

};

export { showPurchase };