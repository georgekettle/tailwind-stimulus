import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// Register dropdown package
import Dropdown from 'stimulus-dropdown'
application.register('dropdown', Dropdown)

import { Modal } from "tailwindcss-stimulus-components"
// application.register('alert', Alert)
// application.register('autosave', Autosave)
// application.register('dropdown', Dropdown)
application.register('modal', Modal)
// application.register('tabs', Tabs)
// application.register('popover', Popover)
// application.register('toggle', Toggle)
// application.register('slideover', Slideover)

export { application }
