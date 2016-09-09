$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '../script/php/catalogues_id.php',
		data:{
			id: window.location.pathname.split( '/' )[2]
		},
		success: function(res){
			var catalogues_id=JSON.parse(res);
			$.each(catalogues_id, function(key, value){
				$('#catalogues_id').append('<tr><td><a href=/products/'+value.products_id+'>'+value.products_name+'</a></td><td>'+value.products_price+'</td><td>'+value.products_quantity+'</td><td>'+value.products_mark+'</td><td>'+value.products_about+'</td></tr>');
			});
		}
	});
});