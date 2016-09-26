$(document).ready(function(){
	$('.authorization-block__link__register').click(function(e){
		e.preventDefault();
		if($('.login').css('display')=='block'){
			return false;
		}
		$('.register').fadeIn('slow');
	});
	$('.authorization-block__link__login').click(function(e){
		e.preventDefault();
		if($('.register').css('display')=='block'){
			return false;
		}
		$('.login').fadeIn('slow');
	});
	$('.close').click(function(e){
		e.preventDefault();
		if($('.register').css('display')=='block'){
			$('.register').fadeOut('slow', function(){
				$('.register__status').html('');
			});
			
		}
		if($('.login').css('display')=='block'){
			$('.login').fadeOut('slow', function(){
				$('.login__status').html('');
			});
		}
		if($('.checkoutForm').css('display')=='block'){
			$('.checkoutForm').fadeOut('slow', function(){
				$('.checkout__status').html('');
			});
		}
	});
	$('.register button[type=submit]').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('login', $('.register input[name=login]').val());
		formData.append('email', $('.register input[name=email]').val());
		formData.append('password', $('.register input[name=password]').val());
		formData.append('password_confirmation', $('.register input[name=password_confirmation]').val());
		if($('.register input[name=isadmin]').is(':checked')){
			formData.append('isadmin', $('.register input[name=isadmin]').val());
		}
		$.ajax({
			url: '/register',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					var errors='<ul>';
					$.each(res.validationErrors, function(key, value){
						errors+='<li>'+value+'</li>';
					});
					errors+='</ul>';
					$('.register__status').html(errors);
				}
				else{
					$('.register__status').html('Вы успешно зарегистрировались!');
					setTimeout(function(){
						window.location.replace(window.location.href);
					}, 1000);
				}
			}
		});
	});
	$('.login button[type=submit]').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('login', $('.login input[name=login]').val());
		formData.append('password', $('.login input[name=password]').val());
		$.ajax({
			url: '/login',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					$('.login__status').html(res.errors);
				}
				else{
					$('.login__status').html('Вы вошли...');
					setTimeout(function(){
						window.location.replace(window.location.href);
					}, 1000);
				}
			}
		});
	});
	$('.notifications__change').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('email', $('input[name=email]').val());
		formData.append('id', $('input[name=id]').val());
		$.ajax({
			url: '/admin/notifications',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					if(res.validationErrors){
						var errors='<ul>';
						$.each(res.validationErrors, function(key, value){
							errors+='<li>'+value+'</li>';
						});
						errors+='</ul>';
						$('.status').html(errors);
					}
				}
				else{
					$('.status').html('Адрес обновлён.');
					setTimeout(function(){
						window.location.replace('admin');
					}, 1000);
				}
			}
		});
	});
	$('button.category__create').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('name', $('input[name=name]').val());
		$.ajax({
			url: '/admin/category/new',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					if(res.validationError){
						$.each(res.validationError, function(key, value){
							$('.status').html(value);
						});
					}
					if(res.slugError){
						$('.status').html(res.slugError);
					}
				}
				else{
					$('.status').html('Категория создана.');
					setTimeout(function(){
						window.location.replace('admin');
					}, 1000);
				}
			}
		});
	});
	$('button.category__edit').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('name', $('input[name=name]').val());
		formData.append('id', $('input[name=id]').val());
		$.ajax({
			url: '/admin/category/edit',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					if(res.validationError){
						$.each(res.validationError, function(key, value){
							$('.status').html(value);
						});
					}
					if(res.slugError){
						$('.status').html(res.slugError);
					}
				}
				else{
					$('.status').html('Категория обновлена.');
					setTimeout(function(){
						window.location.replace('admin');
					}, 1000);
				}
			}
		});
	});
	$('button.category__delete').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('id', $('input[name=id]').val());
		$.ajax({
			url: '/admin/category/delete',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				$('.status').html('Категория и все товары, находившиеся в ней, удалены.');
				setTimeout(function(){
					window.location.replace('admin');
				}, 1000);
			}
		});
	});
	$('button.product__create').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('name', $('input[name=name]').val());
		formData.append('price', $('input[name=price]').val());
		formData.append('description', $('input[name=description]').val());
		formData.append('category', $('select[name=category] option:selected').val());
		formData.append('image', $('input[type=file]')[0].files[0]);
		$.ajax({
			url: '/admin/product/new',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					if(res.validationErrors){
						var errors='<ul>';
						$.each(res.validationErrors, function(key, value){
							errors+='<li>'+value+'</li>';
						});
						errors+='</ul>';
						$('.status').html(errors);
					}
					if(res.slugError){
						$('.status').html(res.slugError);
					}
				}
				else{
					$('.status').html('Товар добавлен.');
					setTimeout(function(){
						window.location.replace('admin');
					}, 1000);
				}
			}
		});
	});
	$('button.product__edit').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('id', $('input[name=id]').val());
		formData.append('name', $('input[name=name]').val());
		formData.append('price', $('input[name=price]').val());
		formData.append('description', $('input[name=description]').val());
		formData.append('category', $('select[name=category] option:selected').val());
		formData.append('image', $('input[type=file]')[0].files[0]);
		$.ajax({
			url: '/admin/product/edit',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					if(res.validationError){
						$.each(res.validationError, function(key, value){
							$('.status').html(value);
						});
					}
					if(res.slugError){
						$('.status').html(res.slugError);
					}
				}
				else{
					$('.status').html('Товар обновлён.');
					setTimeout(function(){
						window.location.replace('admin');
					}, 1000);
				}
			}
		});
	});
	$('button.product__delete').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('id', $('input[name=id]').val());
		$.ajax({
			url: '/admin/product/delete',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				$('.status').html('Товар удалён.');
				setTimeout(function(){
					window.location.replace('admin');
				}, 1000);
			}
		});
	});
	$('button.news__create').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('name', $('input[name=name]').val());
		formData.append('excerpt', $('input[name=excerpt]').val());
		formData.append('description', $('input[name=description]').val());
		formData.append('image', $('input[type=file]')[0].files[0]);
		$.ajax({
			url: '/admin/news/new',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					if(res.validationErrors){
						var errors='<ul>';
						$.each(res.validationErrors, function(key, value){
							errors+='<li>'+value+'</li>';
						});
						errors+='</ul>';
						$('.status').html(errors);
					}
					if(res.slugError){
						$('.status').html(res.slugError);
					}
				}
				else{
					$('.status').html('Новость добавлена.');
					setTimeout(function(){
						window.location.replace('admin');
					}, 1000);
				}
			}
		});
	});
	$('button.news__edit').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('id', $('input[name=id]').val());
		formData.append('name', $('input[name=name]').val());
		formData.append('excerpt', $('input[name=excerpt]').val());
		formData.append('description', $('input[name=description]').val());
		formData.append('image', $('input[type=file]')[0].files[0]);
		$.ajax({
			url: '/admin/news/edit',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					if(res.validationError){
						$.each(res.validationError, function(key, value){
							$('.status').html(value);
						});
					}
					if(res.slugError){
						$('.status').html(res.slugError);
					}
				}
				else{
					$('.status').html('Новость обновлена.');
					setTimeout(function(){
						window.location.replace('admin');
					}, 1000);
				}
			}
		});
	});
	$('button.news__delete').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('id', $('input[name=id]').val());
		$.ajax({
			url: '/admin/news/delete',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				$('.status').html('Новость удалена.');
				setTimeout(function(){
					window.location.replace('admin');
				}, 1000);
			}
		});
	});
	$('.btn-buy').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		formData.append('id', $(this).next().val());
		$.ajax({
			url: '/addToCart',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(){
				setTimeout(function(){
					window.location.replace(window.location.href);
				}, 0);
			}
		});
	});
	$('.btn-buy-wrap__btn-link').click(function(e){
		e.preventDefault();
		$('.checkoutForm').fadeIn('slow');
	});
	$('.proceedToCheckout').click(function(e){
		e.preventDefault();
		var formData=new FormData();
		var ids=$(".cart-product-list input[type=hidden]").map(function(){
		    return this.value;
		});
		var ids=$.makeArray(ids);
		formData.append('ids', ids);
		formData.append('sum', $('.cart-product-list__result-item__value').html());
		formData.append('name', $('input[name=name]').val());
		formData.append('email', $('input[name=email]').val());
		$.ajax({
			url: '/checkout',
			method: 'post',
			processData: false,
			contentType: false,
			cache: false,
			data: formData,
			success: function(res){
				if(!res.success){
					var errors='<ul>';
					$.each(res.validationErrors, function(key, value){
						errors+='<li>'+value+'</li>';
					});
					errors+='</ul>';
					$('.checkout__status').html(errors);
				}
				else{
					$('.checkout__status').html('Заказ оставлен.');
					setTimeout(function(){
						window.location.replace('/');
					}, 0);
				}
			},
			error: function(res){
				$('.checkout__status').html('В ходе обработки запроса произошла ошибка. Повторите попытку позже.');
			}
		});
	});
});