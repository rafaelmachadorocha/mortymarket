const removeAlertAndNotice = () => {

  const closeAlert = document.querySelector('#close');
  if (closeAlert) {
    closeAlert.addEventListener('click', (event) => {
      const alert = event.currentTarget.parentNode;
      alert.classList.add('disappear');
      setTimeout(() => {
        alert.remove();
      }, 500);
  
    });
  }
}

export { removeAlertAndNotice };