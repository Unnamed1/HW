<?php
// 1
$xml=simplexml_load_file('data.xml');
echo '<b>Purchase Order</b><br>';
echo "Purchase Order Number: $xml[PurchaseOrderNumber]<br>";
echo "Order Date: $xml[OrderDate]<br><br>";
foreach($xml->Address as $address){
	echo "Address Type: $address[Type]<br>";
	echo "Name: $address->Name<br>";
	echo "Street: $address->Street<br>";
	echo "City: $address->City<br>";
	echo "State: $address->State<br>";
	echo "Zip: $address->Zip<br>";
	echo "Country: $address->Country<br><br>";
}
echo "Delivery Notes: $xml->DeliveryNotes<br><br>";
echo '<b>Items</b><br>';
foreach($xml->Items->Item as $item){
	echo "Part Number: $item[PartNumber]<br>";
	echo "Product Name: $item->ProductName<br>";
	echo "Quantity: $item->Quantity<br>";
	echo "US Price: $item->USPrice<br>";
	switch($item->children()[3]->getName()){
		case 'Comment': echo "Comment: $item->Comment<br><br>";
			break;
		case 'ShipDate': echo "Ship Date: $item->ShipDate<br>";
			break;
	}
}

// 2
$arr=['1', [2, '22', 222, [2222, '22222']], 3, 4, 5, 6, 7];
file_put_contents(('output.json'), json_encode($arr, JSON_FORCE_OBJECT));
$arr_edit=json_decode(file_get_contents('output2.json'), true);
echo '<pre>';
echo 'Информация об отличающихся элементах:<br>';
echo 'Значения $arr, которых нет в $arr_edit<br>';
print_r(array_diff_assoc($arr, $arr_edit));
echo 'Значения $arr_edit, которых нет в $arr<br>';
print_r(array_diff_assoc($arr_edit, $arr));
echo '</pre>';

// 3
$arr=[];
$num=mt_rand(50, 100);
for($i=0; $i<$num; $i++) $arr[]=mt_rand(1, 100);
$handle=fopen('csv.csv', 'w+');
fputcsv($handle, $arr);
rewind($handle);
$csv=fgetcsv($handle);
for($i=0; $i<$num; $i++) if($csv[$i]%2==0) $sum+=$csv[$i];
echo "Сумма чётных чисел равна $sum<br><br>";

// 4
$ch=curl_init('https://en.wikipedia.org/w/api.php?action=query&titles=Main%20Page&prop=revisions&rvprop=content&format=json');
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$wikipedia=curl_exec($ch);
preg_match('/"pageid":\d+/', $wikipedia, $match);
echo $match[0], '<br>';
preg_match('/"title":".*?"/', $wikipedia, $match);
echo $match[0];
?>