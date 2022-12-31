echo '
<div class="notification">
  <img src='https://kitt.lewagon.com/placeholder/users/arthur-littm' class="avatar-large" />
  <div class="notification-content">
    <p><small>14th January</small></p>
    <p>Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipisicing elit.</p>
  </div>

  <div class="notification-actions">
    <a href="#">Edit <i class="fas fa-pencil-alt"></i></a>
    <a href="#">Delete <i class="far fa-trash-alt"></i></a>
  </div>
</div>

<div class="notification">
  <img src='https://kitt.lewagon.com/placeholder/users/Eschults' class="avatar-large"/>
  <div class="notification-content">
    <p><small>9th January</small></p>
    <p>Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipisicing elit.</p>
  </div>

  <div class="notification-actions">
    <a href="#">Edit <i class="fas fa-pencil-alt"></i></a>
    <a href="#">Delete <i class="far fa-trash-alt"></i></a>
  </div>
</div>' >> index.html

echo '.notification {
  display: flex;
  align-items: center;
  margin-bottom: 8px;
  background: white;
  padding: 8px 16px;
  border: 1px solid rgb(235,235,235);
}

.notification .notification-content {
  flex-grow: 1;
  padding: 0 24px;
}

.notification p {
  margin: 0;
  line-height: 1.4;
}

.notification small {
  color: #999999;
  font-weight: bold;
}
.notification .notification-actions {
  opacity: 0;
  display: flex;
  transition: ease .3s;
}

.notification:hover .notification-actions {
  opacity: 1;
}

.notification .notification-actions a {
  color: #999999;
  margin-left: 16px;
  font-size: 14px;
}

.notification .notification-actions a:hover {
  color: #555555;
}
' >> style.css
