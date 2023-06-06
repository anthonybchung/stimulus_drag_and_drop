import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="one-dimension"
export default class extends Controller {
  connect() {
  }

  static targets = ["task"]
  static value = ["chosen","dropped"]

  dragStart(event){
    this.chosenValue = event.target.id
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
    console.log(this.chosenValue)
    console.log(this.droppedValue)
  }

  Drop(event){
    event.preventDefault()
    this.droppedValue = event.currentTarget.id
    console.log("drag drop")
    console.log(event.currentTarget.id)
  }
}
