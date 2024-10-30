import { Controller, Application } from "@hotwired/stimulus"
import Timeago from 'stimulus-timeago'
import { fr } from "date-fns/locale"

const application = Application.start()
application.register('timeago', Timeago)

// Connects to data-controller="timeago"
export default class extends Controller {
  connect() {
    super.connect()
    console.log('Timeago controller connected')
  }

  get locale() {
    return 'fr'
  }
}
