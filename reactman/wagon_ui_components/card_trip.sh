echo '
<div class="card-trip">
  <img src="https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg" />
  <div class="card-trip-infos">
    <div>
      <h2>Title here</h2>
      <p>Short description here!</p>
    </div>
    <h2 class="card-trip-pricing">£99.99</h2>
    <img src="https://kitt.lewagon.com/placeholder/users/krokrob" class="card-trip-user avatar-bordered" />
  </div>
</div>' >> index.html

echo '.card-trip {
  overflow: hidden;
  background: white;
  box-shadow: 0 0 15px rgba(0,0,0,0.2);
}

.card-trip > img {
  height: 200px;
  width: 100%;
  object-fit: cover;
}

.card-trip h2 {
  font-size: 16px;
  font-weight: bold;
  margin: 0;
}

.card-trip p {
  font-size: 12px;
  opacity: .7;
  margin: 0;
}

.card-trip .card-trip-infos {
  padding: 16px;
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  position: relative;
}

.card-trip-infos .card-trip-user {
  position: absolute;
  right: 16px;
  top: -20px;
  width: 40px;
}
.card-trip {
  overflow: hidden;
  background: white;
  box-shadow: 0 0 15px rgba(0,0,0,0.2);
}

.card-trip > img {
  height: 200px;
  width: 100%;
  object-fit: cover;
}

.card-trip h2 {
  font-size: 16px;
  font-weight: bold;
  margin: 0;
}

.card-trip p {
  font-size: 12px;
  opacity: .7;
  margin: 0;
}


.card-trip .card-trip-infos {
  padding: 16px;
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  position: relative;
}

.card-trip-infos .card-trip-user {
  position: absolute;
  right: 16px;
  top: -20px;
  width: 40px;
}
' >> style.css
