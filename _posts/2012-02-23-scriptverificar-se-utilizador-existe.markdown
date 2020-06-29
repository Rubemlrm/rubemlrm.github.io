---
layout: post
status: publish
published: true
title: Verificar se utilizador existe
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: |+
  Boas noites

  Desta vez venho apresentar mais um pequeno script feito por mim.Este script tem como fundamento verificar se um utilizador existe ou n&atilde;o no sistema Linux e se existir alem de nos mostrar uma mensagem a dizer que existe ainda vai&nbsp;identificar&nbsp;o UID desse utilizador.Caso contr&aacute;rio vai mostrar uma mensagem de erro a dizer que o utilizador n&atilde;o existe.Aten&ccedil;&atilde;o n&atilde;o foram utilizados comandos bash por isso &eacute; tudo perl scripting.

wordpress_id: 398
wordpress_url: http://rubemlrm.com/?p=398
date: '2012-02-23 00:18:54 +0000'
date_gmt: '2012-02-23 00:18:54 +0000'
categories: []
tags: []
comments: []
---
<p>Boas noites</p>
<p>Desta vez venho apresentar mais um pequeno script feito por mim.Este script tem como fundamento verificar se um utilizador existe ou não no sistema Linux e se existir alem de nos mostrar uma mensagem a dizer que existe ainda vai identificar o UID desse utilizador.Caso contrário vai mostrar uma mensagem de erro a dizer que o utilizador não existe.Atenção não foram utilizados comandos bash por isso é tudo perl scripting.</p>
<p><a id="more"></a><a id="more-398"></a></p>
<p>[perl]</p>
<p>#!/usr/bin/perl<br />
use warnings;<br />
use strict;<br />
my @finalusers;<br />
my $utilizador;<br />
my $statuscode = 0;<br />
my $uid;</p>
<p>#Analise se foi intruzido um nome ou não<br />
if(@ARGV != 1){die "Argumento inválido";}<br />
chomp($utilizador = $ARGV[0]);</p>
<p>open(FILE, "/etc/passwd") || die($!);<br />
chomp(my @utilizadores = <FILE>);<br />
close(FILE);<br />
foreach my $date (@utilizadores){<br />
chomp $date;<br />
my @finalusers = split /:/, $date;<br />
chomp(@finalusers);<br />
if($finalusers[0] eq $utilizador){<br />
$uid = $finalusers[2];<br />
$statuscode++;<br />
}<br />
}</p>
<p>if( $statuscode != 1){<br />
print "O $utilizador NÃO se encontra criado no sisteman";<br />
}else{</p>
<p>print "o $utilizador JÁ se encontra criado no sistema! O seu UID é $uid !n" ;<br />
}</p>
<p>[/perl]</p>
