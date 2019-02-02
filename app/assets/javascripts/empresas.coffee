jQuery ->
$(document).ready ->
  $(document).on 'change', '#estado_unidade_id', -> 
    console.log('Mudou')
    cidades = $('#cidade_estado_id').html()
    console.log(cidades)
    estado = $('#estado_unidade_id :selected').text()
    console.log(estado)
    opcoes = $(cidades).filter("optgroup[label='#{estado}']").html()
    if opcoes
	    $('#cidade_estado_id').html(opcoes)
    else
	    $('#cidade_estado_id').empty
	$(document).on 'change', '#empresa_endereco_attributes_unidade_id', -> 
    estados = $('#estado_unidade_id').html()
    console.log(estados)
    unidade = $('#empresa_endereco_attributes_unidade_id :selected').text()
    console.log(unidade)
    opcoes = $(estados).filter("optgroup[label='#{unidade}']").html()
    if opcoes
	    $('#estado_unidade_id').html(opcoes)
    else
	    $('#estado_unidade_id').empty