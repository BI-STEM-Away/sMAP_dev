

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

.row::after {
  content: "";
  clear: both;
  display: table;
}


<h2>Images Side by Side</h2>
<p>How to create side-by-side images with the CSS float property:</p>

<div class="row">
  <div class="column">
    <img src="img_snow.jpg" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="img_forest.jpg" alt="Forest" style="width:100%">
  </div>
  <div class="column">
    <img src="img_mountains.jpg" alt="Mountains" style="width:100%">
  </div>
</div>






# Our Team

> Project Technical Lead

<p float="left">
  <img src="https://bi-stem-away.github.io/shiny_app_dev/Logo.png" Caption="Member Name" width="150" />
</p>

<p float="left">
  <img src="https://bi-stem-away.github.io/shiny_app_dev/Logo.png" width="150" /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
  <img src="https://bi-stem-away.github.io/shiny_app_dev/Logo.png" width="150" /> <br>
  Disha Chauhan  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Austin Yang 
</p>


