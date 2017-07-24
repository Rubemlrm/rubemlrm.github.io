---
layout: post
status: publish
published: true
title: Verificar m&aacute;quinas de rede
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "Boas noites, depois de algum tempo sem postar aqui nada devido a escola
  .Deixo aqui um pequeno script em perl que permite testar as m&aacute;quinas de rede
  para ver quais &eacute; que est&atilde;o&nbsp;ativas&nbsp;na nossa rede inform&aacute;tica.&nbsp;Para&nbsp;tal
  &eacute; preciso ter um ficheiro com os ips que queremos testar e o script trata
  do resto sozinho.\r\n\r\n"
wordpress_id: 485
wordpress_url: http://rubemlrm.com/?p=485
date: '2012-03-16 21:06:07 +0000'
date_gmt: '2012-03-16 21:06:07 +0000'
categories: []
tags: []
comments: []
---
<p>Boas noites, depois de algum tempo sem postar aqui nada devido a escola .Deixo aqui um pequeno script em perl que permite testar as máquinas de rede para ver quais é que estão ativas na nossa rede informática. Para tal é preciso ter um ficheiro com os ips que queremos testar e o script trata do resto sozinho.</p>
<p><a id="more"></a><a id="more-485"></a></p>
<p>[perl]</p>
<p>#!/usr/bin/perl<br />
package networking;<br />
use warnings;<br />
use strict;<br />
use Net::Ping;<br />
use autodie;<br />
my $host;<br />
my $my_addr="<ip>";<br />
my $ping;<br />
my @reportlist;<br />
chomp(my $date = `date +%a%d%m%y%k%M`);</p>
<p>sub VerificarMaquinasRede(){<br />
open(FILE, "../files/listagem_ip_rede.txt");<br />
chomp (my @ips = <FILE>);<br />
close(FILE);</p>
<p>foreach $host (@ips){<br />
$ping = Net::Ping->new();<br />
if ($ping->ping($host)){<br />
#print "$host -> está activo.n";<br />
push(@reportlist,"$host -> está activo.");<br />
}else{<br />
#print "$host -> está offlinen";<br />
push(@reportlist,"$host -> está offline.");<br />
}<br />
$ping ->close();<br />
}</p>
<p>#Reporte da lista<br />
foreach (@reportlist)<br />
{<br />
print "$_n";<br />
}</p>
<p>#para um ficheiro a ser enviado por mail</p>
<p>open(FILE , ">../logs/'$date_machine_networking_report.txt'");<br />
foreach (@reportlist){<br />
print FILE "$_n";<br />
}<br />
close(FILE);<br />
}</p>
<p> </p>
<p>[/perl]</p>
