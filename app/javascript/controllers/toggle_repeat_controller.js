import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-reapeat"
export default class extends Controller {
  static targets = ['checkbox', 'options']

  initialize() {
    this.optionsTarget.style.display = 'block';
    this.change();
  }

  connect() {
    //console.log("Hello, toggle-repeat", this.element)
  }

  change() {
    if (this.checkboxTarget.checked) {
      this.optionsTarget.style.display = 'block';
    } else {
      this.optionsTarget.style.display = 'none';
    }
  }

}