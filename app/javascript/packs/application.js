// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require popper
//= require bootstrap-sprockets
//= require_tree .

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require("jquery")

Rails.start()
Turbolinks.start()
ActiveStorage.start()


import { addFormField } from "./add_form_field"
window.addFormField = addFormField

// Add handler for adding new fields in the form
document.addEventListener("turbolinks:load", ()=> {
    if (document.querySelector("#fieldsetContainer")) {
        addFormField()
    }
})


