echo '
<ul class="list-inline tabs-underlined">
  <li>
    <a href="#" class="tab-underlined active">Bookings</a>
  </li>
  <li>
    <a href="#" class="tab-underlined">Requests</a>
  </li>
  <li>
    <a href="#" class="tab-underlined">Conversations</a>
  </li>
</ul>
' >> index.html
echo '.tabs-underlined {
  display: flex;
  align-items: center;
}

.tabs-underlined .tab-underlined {
  color: black;
  padding: 8px;
  margin: 8px;
  opacity: .4;
  cursor: pointer;
  text-decoration: none;
  border-bottom: 4px solid transparent;
}

.tabs-underlined .tab-underlined.active {
  opacity: 1;
  border-bottom: 3px solid #555555;
}
' >> style.css
