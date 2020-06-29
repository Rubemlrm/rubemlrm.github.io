---
layout: post
status: publish
published: true
title: Script Adb and Linux
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "Cada vez mais existem pessoas a utilizar Android e Linux e muitas deles
  tem dificuldades em por o adb a funcionar com Linux por causa de se ter que configurar
  regras ou ent&atilde;o saber os valores para as coisas. Decidi ent&atilde;o criar
  um pequeno script em perl para agilizar este processo e tornando a vida do pessoal
  mais f&aacute;cil quando trabalham com isto.\r\n\r\n&nbsp;\r\n\r\n"
wordpress_id: 104
wordpress_url: http://rubemlrm.com/?p=104
date: '2012-01-04 22:39:39 +0000'
date_gmt: '2012-01-04 22:39:39 +0000'
categories: []
tags: []
comments: []
---
<p>Cada vez mais existem pessoas a utilizar Android e Linux e muitas deles tem dificuldades em por o adb a funcionar com Linux por causa de se ter que configurar regras ou então saber os valores para as coisas. Decidi então criar um pequeno script em perl para agilizar este processo e tornando a vida do pessoal mais fácil quando trabalham com isto.</p>
<p> </p>
<p><a id="more"></a><a id="more-104"></a></p>
<p>Deixo aqui o código fonte do script e como anexo irei deixar o ficheiro para fazer download e executar.</p>
<p> </p>
<p>[perl]</p>
<p>#!/usr/bin/perl -w<br />
#Developer by : Rubem Mota<br />
#Dont use to earn money and keep all copyrights reserved to me<br />
#Twitter: @rubemlrm<br />
use strict;<br />
chomp(my @rules = (<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="0502", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="413c", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="0489", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="091E", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="0bb4", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="12d1", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="0482", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="1004", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="22b8", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="0955", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="10A9", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="04e8", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="04dd", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="0fce", MODE="0666"',<br />
'SUBSYSTEM=="usb", SYSFS{idVendor}=="19D2", MODE="0666"'<br />
));</p>
<p>my @brands = qw (<br />
Acer<br />
Dell<br />
Foxconn<br />
Garmin-Asus<br />
HTC<br />
Huawei<br />
Kyocera<br />
LG<br />
Motorola<br />
Nvidia<br />
Pantech<br />
Samsung<br />
Sharp<br />
SonyEricsson<br />
ZTE<br />
);<br />
my $i = 1;<br />
my $uid = `id -u`;<br />
#Checking if user is root or not<br />
if ( $uid != 0 ){<br />
print "you need root priveleges to run this scriptn";<br />
}else{<br />
#running the import part of script<br />
print "------------------------------:n";<br />
print ":Welcome to Adb rule creator :n";</p>
<p>#it will create the list to choose brand<br />
foreach(@brands){<br />
print ".".$i++ ."=>". $_ ."n";<br />
}</p>
<p>print ":Choose driver brand:n";<br />
chomp(my $opt = <STDIN>);</p>
<p>#condition to check input</p>
<p>if ($opt =~ /D/){<br />
print "Invalid Option choose againn";<br />
print ":Choose driver brand:n";<br />
chomp(my $opt = <STDIN>);<br />
}</p>
<p>print "It will be created adb rules to " . $brands[$opt - 1] ."n";</p>
<p>#filehandle to create rule<br />
open(FILE , ">>/etc/udev/rules.d/51-android.rules");<br />
print FILE $rules[$opt - 1];<br />
system("chmod a+r /etc/udev/rules.d/51-android.rules");<br />
close(FILE);<br />
print "Restarting services";<br />
system ("/etc/init.d/udev restart");<br />
print "All done";<br />
}</p>
<p>[/perl]</p>
<p> </p>
<p>Depois de fazerem download do script façam:</p>
<p>[shell]</p>
<p>chmod +x <nome de ficheiro></p>
<p>[/shell]</p>
