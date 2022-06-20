import { Toast } from 'bootstrap';

window.addEventListener("turbo:load",(ev)=>{
  Array.from(document.querySelectorAll('.toast'))
    .forEach(toastNode => new Toast(toastNode));
  
  document.querySelector("#toast-trigger").addEventListener("click",()=>{
    new Toast(
      document.querySelector("#liveToast")
    ).show();
  });

})