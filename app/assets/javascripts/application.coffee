//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require s3_direct_upload
//= require_tree .

ready = ->
  $("#s3-uploader").S3Uploader
    remove_completed_progress_bar: false

$(document).ready(ready)
$(document).on('page:load', ready)
