document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  const restaurantsList = document.querySelectorAll("#restaurants li");

  restaurantsList.forEach((li) => {
    li.addEventListener("click", toggleLi);
  });


  // adding SF places as list items
  const addSFPlaces = (event) => {
    event.preventDefault();
    const placeInputText = document.querySelector(".favorite-input");
    const restaurantslist = document.querySelector("#restaurants")
    const li = document.createElement("li")
    li.textContent = placeInputText.value;
    restaurantslist.append(li);
    placeInputText.value = ""
    

  }

  const submitBtn = document.querySelector(".favorite-submit")
  submitBtn.addEventListener("click", addSFPlaces)

  // Your code here

  const showBtn = document.querySelector(".photo-show-button")
  showBtn.addEventListener("click", (event) => {
    const formContainer = document.querySelector(".photo-form-container")
    formContainer.className = "photo-form-container"
  })

  const photoSubmitBtn = document.querySelector(".photo-url-submit")
  photoSubmitBtn.addEventListener("click", (event) => {
    event.preventDefault();
    const urlInputText = document.querySelector(".photo-url-input");
    const photosList = document.querySelector(".dog-photos");
    const li = document.createElement("li");
    const img = document.createElement("img");
    img.src = urlInputText.value;
    console.log(urlInputText);
    li.appendChild(img);
    photosList.append(li);
  })

  
  // adding new photos

  // Your code here
});