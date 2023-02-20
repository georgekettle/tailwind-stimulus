import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dark"
export default class extends Controller {
  connect() {
  }

  // Trigger this when button clicked
  toggleDarkMode() {
    console.log('Toggle dark mode')
    // toggle .dark class on html tag
    // this.element is html tag
    this.element.classList.toggle('dark')
  }
}
