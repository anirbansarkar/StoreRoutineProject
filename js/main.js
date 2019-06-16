let toggleBtnStatus = false;

let toggle = function () {

      let formShow = document.querySelector(".form");
      let heading = document.querySelector(".wrapper p");
      let signBtn= document.querySelector(".btn");
      if(toggleBtnStatus === false){
         formShow.style.display = "block";
         formShow.style.position="absolute";
         formShow.style.top= "10px";
         formShow.style.left= "500px";
         signBtn.style.visibility = "hidden";
         heading.style.visibility = "hidden";
        toggleBtnStatus= true;
      }

  }
