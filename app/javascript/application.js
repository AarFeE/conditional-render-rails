// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("DOMContentLoaded", function() {
    const checkbox = document.getElementById('show-modal-checkbox');
    const modal = document.getElementById('hidden-modal');
  
    checkbox.addEventListener('change', function() {
      if (checkbox.checked) {
        modal.style.display = 'block';
      } else {
        modal.style.display = 'none';
      }
    });
});