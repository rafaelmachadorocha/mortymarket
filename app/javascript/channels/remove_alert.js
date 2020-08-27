const removeAlertAndNotice = () => {

  const alert = document.querySelector('.alert');
  if (alert) {

     document.documentElement.addEventListener('click', (event) => {
       alert.classList.add('disappear');
       setTimeout(() => {
         alert.remove();
       }, 500);
  
     });
  }
}

export { removeAlertAndNotice };