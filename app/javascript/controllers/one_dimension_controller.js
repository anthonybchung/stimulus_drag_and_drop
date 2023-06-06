import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="one-dimension"
export default class extends Controller {
  connect() {
  }

  static targets = ["task"]

  dragStart(event){
    console.log("drag started")
    console.log(event.target.id)
  }

  dragOver(event){
    event.preventDefault()
    console.log("drag over")
    console.log(event.currentTarget.id)
  }
  dragEnd(event){
    event.preventDefault()
    console.log("drag end")
    console.log(event.currentTarget.id)
  }

  Drop(event){
    event.preventDefault()
    console.log("drag drop")
    console.log(event.currentTarget.id)
  }
}
