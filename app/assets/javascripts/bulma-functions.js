// toggle the dropdown menu for mobile view
document.addEventListener('turbolinks:load', function() {

  // Get all "navbar-burger" elements
  var navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if (navbarBurgers.length > 0) {

    // Add a click event on each of them
    navbarBurgers.forEach( function(el) {
      el.addEventListener('click', function() {

        // Get the target from the "data-target" attribute
        var target = el.dataset.target;
        var $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }

  // pull out the selected file upload name for forms
  var file = document.getElementById("drawing_picture");

  if (file) {
    file.onchange = function() {
      if (file.files.length > 0) {
        document.getElementById('filename').innerHTML = file.files[0].name;
      }
    }
  }

  // trigger fontawesome for icons
  FontAwesome.dom.i2svg();
});
