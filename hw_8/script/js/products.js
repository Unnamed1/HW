$(document).ready(function(){
	$.ajax({
		type: 'post',
		url: '../script/php/products.php',
		success: function(res){
			var products=JSON.parse(res);
			$.each(products, function(key, value){
				$('#products').append('<tr><td><a href=/products/'+value.products_id+'>'+value.products_name+'</a></td><td>'+value.products_price+'</td><td>'+value.products_quantity+'</td><td>'+value.products_mark+'</td><td>'+value.products_about+'</td><td><a href=/catalogues/'+value.catalogues_id_ref+'>'+value.catalogues_name+'</a></td></tr>');
			});
		}
	});
});