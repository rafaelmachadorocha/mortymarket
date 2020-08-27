const dropdownMenu = () => {
  const button = document.getElementById('dropdown-button')
  if(button) {   
    const dropDown = document.querySelector('.navigation-menu')
    button.addEventListener('click', (event) => {
      dropDown.classList.toggle('collapsed');
    });
  }
}

export { dropdownMenu };