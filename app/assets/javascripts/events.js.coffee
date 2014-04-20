# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".participation").on("ajax:success", (e, data, status, xhr) ->
    $(this).parent().replaceWith "Pris en compte."
  ).on "ajax:error", (e, xhr, status, error) ->
    $(this).parent().append "<p>ERROR</p>"

$(document).ready ->
	$("form.disponibilites").change -> 
		$("input[data-classe='ValidDispo']").addClass("actualiser")


$(document).ready ->
  $('.raid_leads_tags_ids').chosen()