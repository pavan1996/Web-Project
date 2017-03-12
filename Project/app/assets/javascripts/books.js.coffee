# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('#book_category_branch').autocomplete
    source: $('#book_category_branch').data('autocomplete_source')