# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', (event) ->
    $('[data-toggle="tooltip"]').tooltip()
    
    checkbox = $('table tbody input[type="checkbox"]')
    
    $('#selectAll').click ->
        if @checked
          checkbox.each ->
            @checked = true
            return
        else
          checkbox.each ->
            @checked = false
            return
        return
    
    checkbox.click ->
        if !@checked
            $('#selectAll').prop 'checked', false
        return
    
    alert "Teste";
    return