//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require s3_direct_upload
//= require_tree .

ready = ->
  $("#s3-uploader").S3Uploader()

$(document).ready(ready)
$(document).on('page:load', ready)
