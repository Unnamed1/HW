$(document).ready(function(){
	$.ajax({
		type: 'get',
		url: 'script/php/catalogues.php',
		success: function(res){
			var catalogues=JSON.parse(res);
			$.each(catalogues, function(key, value){
				$('#catalogues').append('<tr><td><a href=/catalogues/'+value.catalogues_id+'>'+value.catalogues_name+'</a></td></tr>');
			});
		}
	});
});