<?php
require_once('vendor/autoload.php');
require_once('conf.php');

$app=new Slim\App;
$loader=new Twig_Loader_Filesystem('view');
$twig=new Twig_Environment($loader);

$pdo->query('CREATE TABLE IF NOT EXISTS `catalogues`
	(`catalogues_id` SERIAL PRIMARY KEY,
	`catalogues_name` VARCHAR(255) NOT NULL)
	Engine=InnoDB
	DEFAULT CHARSET=UTF8');
$pdo->query('CREATE TABLE IF NOT EXISTS `products`
	(`products_id` SERIAL PRIMARY KEY,
	`products_name` VARCHAR(255),
	`products_price` BIGINT UNSIGNED,
	`products_quantity` BIGINT UNSIGNED,
	`products_mark` FLOAT(4,1) DEFAULT 0.0,
	`products_about` LONGTEXT,
	`catalogues_id_ref` BIGINT UNSIGNED)
	Engine=InnoDB
	DEFAULT CHARSET=UTF8');

$app->get('/', function($req, $res, $arg) use ($twig){
	session_start();
	if(isset($_SESSION['status'])){
		$status=$_SESSION['status'];
		unset($_SESSION['status']);
		session_destroy();
	}
	$res->write($twig->render('index.twig', ['status'=>$status]));
});
$app->get('/catalogues', function($req, $res, $arg) use ($twig){
	$res->write($twig->render('catalogues.twig'));
});
$app->get('/catalogues/{catalogues_id}', function($req, $res, $arg) use ($twig){
	$res->write($twig->render('catalogues_id.twig'));
});
$app->get('/products', function($req, $res, $arg) use ($twig){
	$res->write($twig->render('products.twig'));
});
$app->get('/products/{products_id}', function($req, $res, $arg) use ($twig){
	$res->write($twig->render('products_id.twig'));
});
$app->get('/search', function($req, $res, $arg) use ($twig){
	$res->write($twig->render('search.twig'));
});
$app->get('/table/fill', function($req, $res, $arg) use ($pdo){
	try{
		$pdo->query('INSERT INTO `catalogues` VALUES
			(2, "Материнские платы"),
			(3, "Видеоадаптеры"),
			(4, "Жёсткие диски"),
			(5, "Оперативная память"),
			(1, "Процессоры")');
		$pdo->query('INSERT INTO `products` VALUES
			(2, "Celeron 2.0GHz", 1969, 2, 3.7, "Процессор Celeron® 2.0GHz, 128KB, 478-PGA, 400MHz, OEM", 1),
			(3, "Celeron 2.4GHz", 2109, 4, 3.9, "Процессор Celeron® 2.4GHz, 128kb, 478-PGA, 400Mhz, OEM", 1),
			(4, "Celeron D 320 2.4GHz", 1962, 1, 4.1, "Процессор Celeron® D 320 2.4GHz, 256kb, 478-PGA, 533Mhz, OEM", 1),
			(5, "Celeron D 325 2.53GHz", 2747, 6, 4.1, "Процессор Celeron® D 325 2.53GHz, 256kb, 478-PGA, 533Mhz, OEM", 1),
			(6, "Celeron D 315 2.26GHz", 1880, 6, 4.1, "Процессор Celeron® D 315 2.26GHz, 256kb, 478-PGA, 533Mhz, OEM", 1),
			(7, "Intel Pentium 4 3.2GHz", 7259, 5, 4.5, "Процессор Intel® Pentium®4 3.2GHz, 1Mb, 478-PGA, 800Mhz, Hyper-Threading, OEM", 1),
			(8, "Intel Pentium 4 3.0GHz", 6147, 1, 4.6, "Процессор Intel® Pentium®4 3.0GHz, 512Kb, 478-PGA, 800Mhz, Hyper-Threading, OEM", 1),
			(9, "Intel Pentium 4 3.0GHz", 5673, 12, 4.5, "Процессор Intel® Pentium®4 3.0GHz, 1Mb, 478-PGA, 800Mhz, Hyper-Treading, OEM", 1),
			(10, "Gigabyte GA-8I848P-RS", 1896, 6, 3.9, "Материнская плата SOCKET-478 Gigabyte GA-8I848P-RS i848, (800Mhz), DDR, AGP 8x, ATA100, SATA , Sound 6ch, USB2.0, ATX", 2),
			(11, "Gigabyte GA-8IG1000", 2420, 2, 3.8, "Материнская плата SOCKET-478 Gigabyte GA-8IG1000 i865g,FSB800/533/400,2chDDR400/333/266(4слота),Video,AGP,5PCI,ATA-100,S-ATA", 2),
			(12, "Gigabyte GA-8IPE1000G", 2289, 6, 3.7, "Материнская плата Socket-478 Gigabyte GA-8IPE1000G i865PE(800/533/400Mhz),2ch400/333/266DDR,PCI/AGP,U-100,AC97,Lan(1Gb),S-ATA,USB 2.0, ATX", 2),
			(13, "Asustek P4C800-E Delux", 5395, 4, 4.1, "Материнская плата Socket-478 Asustek P4C800-E Delux i875P,FSB800/533Mhz,2chDDR400/333,AGP,6PCI,iEEE1394, Raid, U-133,S-ATA, AC97, Lan(1000), ATX", 2),
			(14, "Asustek P4P800-VM\\L i865G", 2518, 6, 4.0, "Материнская плата Socket-478 Asustek P4P800-VM\\L i865G FSB800/533/400, 2chDDR400/333/266(4слота),AGP,video,3PCI,ATA-100,S-ATA,lan ,M-ATX", 2),
			(15, "Epox EP-4PDA3I", 2289, 5, 4.0, "Материнская плата Socket-478 Epox EP-4PDA3I i865PE(800Mhz), 2chDDR, PCI/AGP, SATA, Lan, U-100, RAID, AC97, LAN, ATX", 2),
			(16, "ASUSTEK A9600XT/TD", 5156, 2, 4.7, "Видеоадаптер ASUSTEK A9600XT/TD 128Mb DDR SDRAM, 2x400MHz DAC, AGP8x, ATI Radeon 9600XT, DVI, TV- out, BOX", 3),
			(17, "ASUSTEK V9520X", 1602, 6, 4.0, "Видеоадаптер ASUSTEK V9520X 128Mb DDR SDRAM, 400MHz DAC, AGP 8x, GeForce FX 5200, TV- out, BOX", 3),
			(18, "SAPPHIRE 256MB RADEON 9550", 2730, 3, 3.8, "Видеокарта SAPPHIRE 256MB RADEON 9550, TV-out, DVI, OEM", 3),
			(19, "GIGABYTE AGP GV-N59X128D", 5886, 6, 3.6, "Видеокарта GIGABYTE AGP GV-N59X128D FX5900XT OEM", 3),
			(20, "Maxtor 6Y120P0", 2456, 6, 4.5, "Винчестер 120 GB Maxtor 6Y120P0, UDMA-133, 7200rpm, 8MB", 4),
			(21, "Maxtor 6B200P0", 3589, 4, 4.0, "Винчестер 200 GB Maxtor 6B200P0, UDMA-133, 7200rpm, 8Mb", 4),
			(22, "Samsung SP0812C", 2093, 5, 4.0, "Винчестер 80 GB Samsung SP0812C, SATA, 7200rpm SpinPoint P80 SerialATA Буферная кэш-память 8 MB  7200об/мин  Интерфейс Serial ATA 1.0", 4),
			(23, "Seagate Barracuda ST3160023A", 3139, 3, 4.1, "Винчестер 160 GB Seagate Barracuda ST3160023A, UDMA-100, 7200rpm, 8Mb", 4),
			(24, "Seagate ST3120026A", 2468, 8, 4.2, "Винчестер 120 GB Seagate ST3120026A, UDMA-100, 7200rpm, 8MB", 4),
			(25, "DDR-400 256MB Kingston", 1085, 20, 4.8, "Оперативная память DDR-400 256MB Kingston", 5),
			(26, "DDR-400 256MB Hynix Original", 1179, 15, 4.6, "Оперативная память DDR-400 256MB Hynix Original", 5),
			(27, "DDR-400 256MB PQI", 899, 10, 4.2, "Оперативная память DDR-400 256MB PQI", 5),
			(28, "DDR-400 512MB Kingston", 1932, 20, 4.8, "Оперативная память DDR-400 512MB Kingston", 5),
			(29, "DDR-400 512MB PQI", 1690, 12, 4.2, "Оперативная память DDR-400 512MB PQI", 5),
			(30, "DDR-400 512MB Hynix", 1717, 8, 4.5, "Оперативная память DDR-400 512MB Hynix", 5),
			(31, "Intel Core i7-4820K", 22540, 4, 0.3, "Процессор для настольных персональных компьютеров, основанных на платформе Intel", 1),
			(1, "Celeron 1.8!!! NEW", 500, 2, 0.1, "Тестовое описание товара", 1)');
	}
	catch(PDOException $e){
		return false;
	}
	return $res->withStatus(302)->withRedirect('/');
});

$app->run();
?>