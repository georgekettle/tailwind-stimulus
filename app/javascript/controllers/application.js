import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// Register dropdown package
import Dropdown from 'stimulus-dropdown'
application.register('dropdown', Dropdown)

export { application }
