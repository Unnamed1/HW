$(document).ready(function(){
	$('input[name=search]').keyup(function(){
		$('#search').html('');
		var query=$(this).val();
		if(query.length==0 || query==' '){
			return false;
		}
		$.ajax({
			type: 'post',
			url: '../script/php/search.php',
			data:{
				query: query
			},
			success: function(res){
				$('#search').append('<thead><tr><td>Name</td><td>Price</td><td>Quantity</td><td>Mark</td><td>Description</td><td>Catalogue</td></tr></thead>');
				var search=JSON.parse(res);
				$.each(search, function(key, value){
					$('#search').append('<tr><td><a href=/products/'+value.products_id+'>'+value.products_name+'</a></td><td>'+value.products_price+'</td><td>'+value.products_quantity+'</td><td>'+value.products_mark+'</td><td>'+value.products_about+'</td><td><a href=/catalogues/'+value.catalogues_id_ref+'>'+value.catalogues_name+'</a></td></tr>');
				});
			}
		});
	})
});