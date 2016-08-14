<?php
//1
function str(array $arr, $par=false){
	if($par){
		return implode(' ', $arr);
	}
	$num=count($arr);
	for($i=0; $i<$num; $i++){
		echo "<p>$arr[$i]</p>";
	}
}

$array=['Раз','Два','Три','Четыре','Пять'];
str($array);
echo str($array, true), '<br><br>';

//2
function calc(array $arr, $op){
	$num=count($arr);
	$res=$arr[0];
	switch($op){
		case '+':
			for($i=1; $i<$num; $i++){
				$res+=$arr[$i];
			}
			break;
		case '-':
			for($i=1; $i<$num; $i++){
				$res-=$arr[$i];
			}
			break;
		case '*':
			for($i=1; $i<$num; $i++){
				$res*=$arr[$i];
			}
			break;
		case '/':
			for($i=1; $i<$num; $i++){
				$res/=$arr[$i];
			}
			break;
		default: $res='Введите корректную операцию';
	}
	echo $res . '<br>';
}
$array=[];
$num=mt_rand(5, 10);
echo 'Числа: ';
for($i=0; $i<$num; $i++){
	echo $array[$i]=mt_rand(1, 5) . ' ';
}
echo '<br>';
echo '+: ', calc($array, '+');
echo '-: ', calc($array, '-');
echo '*: ', calc($array, '*');
echo '/: ', calc($array, '/');
calc($array, '$res');
echo '<br>';

//3
function calcEverithing(){
	$num=func_num_args();
	$arr=func_get_args();
	for($i=1; $i<$num; $i++)
		if(!is_int($arr[$i]) && !is_float($arr[$i])){
			echo 'Вводите только целые или вещественные числа <br>';
			return;
		}
	$op=$arr[0];
	$res=$arr[1];
	switch($op){
		case '+':
			for($i=2; $i<$num; $i++){
				$res+=$arr[$i];
			}
			break;
		case '-':
			for($i=2; $i<$num; $i++){
				$res-=$arr[$i];
			}
			break;
		case '*':
			for($i=2; $i<$num; $i++){
				$res*=$arr[$i];
			}
			break;
		case '/':
			for($i=2; $i<$num; $i++){
				$res/=$arr[$i];
			}
			break;
	}
	echo $res . '<br>';
}
echo 'Числа: 5 1 2.5 1 2<br>';
echo '+: ', calcEverithing('+', 5, 1, 2.5, 1, 2);
echo '-: ', calcEverithing('-', 5, 1, 2.5, 1, 2);
echo '*: ', calcEverithing('*', 5, 1, 2.5, 1, 2);
echo '/: ', calcEverithing('/', 5, 1, 2.5, 1, 2);
echo '<br>';

//4
function table($rows, $cols){
	if(!is_int($rows) || !is_int($cols)){
		echo 'Вводите только целые или вещественные числа <br>';
		return;
	}
	echo '<table>';
	for($i=1; $i<=$rows; $i++){
		echo '<tr>';
		for($j=1; $j<=$cols; $j++){
			echo '<td>' . $i*$j . '</td>';
		}
		echo '</tr>';
	}
	echo '</table><br>';
}
echo 'rows: ', $rows=mt_rand(1,10), '<br>';
echo 'cols: ', $cols=mt_rand(1,10), '<br>';
table($rows, $cols);

//5
function palindrome($str){
	function utf8_strrev($str){
	    preg_match_all('/./us', $str, $ar);
	    return join('', array_reverse($ar[0]));
	}
	function mb_strcasecmp($str1, $str2, $encoding=null) {
	    if(null===$encoding) $encoding=mb_internal_encoding();
	    return strcmp(mb_strtoupper($str1, $encoding), mb_strtoupper($str2, $encoding));
	}
	$str=str_replace(' ', '', $str);
	if(!mb_strcasecmp($str,utf8_strrev($str)))
		return true;
	return false;
}
function result($str){
	if(palindrome($str))
		echo 'Строка является палиндромом';
	else echo 'Строка не является палиндромом';
}
$str=' Ш   а ла   ш    ';
result($str);
echo '<br><br>';

//6
echo date('d.m.Y H:i'), '<br>';
echo strtotime('24.02.2016 00:00:00'), '<br><br>';

//7
echo str_replace('К', '', 'Карл у Клары украл Кораллы'), '<br>';
echo str_replace('Две', 'Три', 'Две бутылки лимонада'), '<br><br>';

//7
function smile(){
	echo '(ᕗ ಠ益ರೃ)ᕗ ┬━┬';
}
function rx($str){
	if(preg_match('/:\)/', $str)){
		smile();
		return;
	}
	preg_match('/\d+/', $str, $match);
	if($match[0]>1000)
		echo 'Сеть есть';
}
rx('RX packets:950381 errors:0 dropped:0 overruns:0 frame:0. :)');
echo '<br>';
rx('RX packets:950381 errors:0 dropped:0 overruns:0 frame:0.');
echo '<br><br>';

//8
function readGoddamnFile($name){
	if(file_exists($name))
		echo file_get_contents($name);
}
readGoddamnFile('test.txt');

//9
$handle=fopen('anothertest.txt', 'w');
fwrite($handle, 'Hello again!');
?>