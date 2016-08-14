<?php
// 1
$name='Игорь';
$age=19;
echo "Меня зовут: $name <br>";
echo "Мне $age лет <br>";
echo '"!|\\/\'"\\<br><br>';

// 2
$pics=80;
$mark=23;
$penc=40;
$pnts=$pics-$mark-$penc;
echo "Красками выполнено $pnts рисунков <br><br>";

// 3
define(CONSTANT, 'CONSTANT');
if(defined('CONSTANT')) echo CONSTANT . '<br>';
define(CONSTANT, 'Constant');
echo CONSTANT . '<br><br>'; // Изменить значение нельзя

// 4
$age=mt_rand(0, 100);
echo "Возраст $age <br>";
if($age>=18 && $age<=65) echo 'Вам ещё работать и работать<br><br>';
elseif($age>65) echo 'Вам пора на пенсию<br><br>';
elseif($age>=1 && $age<=17) echo 'Вам ещё рано работать<br><br>';
else echo 'Неизвестный возраст<br><br>';

// 5
$day=mt_rand(0, 100);
echo "День $day<br>";
switch($day){
	case 1:
	case 2:
	case 3:
	case 4:
	case 5: echo 'Это рабочий день<br><br>'; break;
	case 6:
	case 7: echo 'Это выходной день<br><br>'; break;
	default: echo 'Неизвестный день<br><br>';
}

// 6
$bmw=array(
	'model'=>'X5',
	'speed'=>120,
	'doors'=>5,
	'year'=>'2015');
$toyota=array(
	'model'=>'RAV4',
	'speed'=>180,
	'doors'=>4,
	'year'=>'2016');
$opel=array(
	'model'=>'Mokka',
	'speed'=>140,
	'doors'=>4,
	'year'=>'2016');
$car=array('bmw'=>$bmw, 'toyota'=>$toyota, 'opel'=>$opel);
foreach($car as $key=>$value){
	echo "CAR $key<br>";
	foreach($value as $key=>$specs){
		echo "$specs ";
	}
	echo '<br>';
}
echo '<br>';

// 7
echo '<table>';
for($i=1; $i<=10; $i++){
	echo '<tr>';
	for($j=1; $j<=10; $j++){
		if($i%2==0 && $j%2==0) echo '<td>(' . $i*$j . ')</td>';
		elseif($i%2 && $j%2) echo '<td>[' . $i*$j . ']</td>';
		else echo '<td>' . $i*$j . '</td>';
	}
	echo '</tr>';
}
echo '</table><br>';

//8
$str='Один Два Три Четыре Пять';
echo $str . '<br>';
$arr=explode(' ', $str);
foreach($arr as $value)
	echo $value . '<br>';
$str='';
$cnt=count($arr);
$arr=array_reverse($arr);
$i=0;
while($i<$cnt){
	if($i==$cnt-1) $str.=$arr[$i];
	else $str.="$arr[$i], ";
	$i++;
}
echo $str;
?>