$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '../script/php/products_id.php',
		data:{
			id: window.location.pathname.split( '/' )[2]
		},
		success: function(res){
			var products_id=JSON.parse(res);
			$.each(products_id, function(key, value){
				$('#products_id').append('<tr><td>'+value.products_name+'</td><td>'+value.products_price+'</td><td>'+value.products_quantity+'</td><td>'+value.products_mark+'</td><td>'+value.products_about+'</td><td><a href=/catalogues/'+value.catalogues_id_ref+'>'+value.catalogues_name+'</a></td></tr>');
			});
		}
	});
});