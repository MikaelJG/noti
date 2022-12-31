echo '<div class="cards">
  <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/breakfast.jpg)">
    Breakfast
  </div>

  <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/lunch.jpg)">
    Lunch
  </div>

  <div class="card-category" style="background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.3)), url(https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/dinner.jpg)">
    Dinner
  </div>
</div>
' >> index.html

echo '
.cards {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-gap: 16px;
}

/* // Smallest device */
@media (min-width: 100px) and (max-width: 575px) {
  .cards {
    grid-template-columns: 1fr;
  }
}

/* // Small devices (landscape phones, 576px and up) */
@media (min-width: 576px) {
  .cards {
    grid-template-columns: 1fr;
  }
}

/* // Medium devices (tablets, 768px and up) */
@media (min-width: 768px) {
  .cards {
    grid-template-columns: 1fr 1fr;
  }
}

/* // Large devices (desktops, 992px and up) */
@media (min-width: 992px) {
  .cards {
    grid-template-columns: 1fr 1fr 1fr;
  }
}

/* // Extra large devices (large desktops, 1200px and up) */
@media (min-width: 1200px) {
  .cards {
    grid-template-columns: 1fr 1fr 1fr;
  }
}
' >> style.css
