---
layout: post
status: publish
published: true
title: Reportar Directorias Vazias
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: Aqui fica um pequeno script para encontrar pastas vazias dentro de uma&nbsp;directoria.Este
  script utiliza o m&oacute;dulo File::Find::Rule para criar a listagem de todas as
  directorias e&nbsp;sub-directorias, utilizando uma directoria de partida.Este script
  pode servir de base para a cria&ccedil;&atilde;o de um script para gerir directorias
  e apagar&nbsp;directorias&nbsp;vazias caso seja necess&aacute;rio.Para tal basta
  fazer pequenas&nbsp;altera&ccedil;&otilde;es&nbsp;.
wordpress_id: 209
wordpress_url: http://rubemlrm.com/?p=209
date: '2012-02-15 18:22:09 +0000'
date_gmt: '2012-02-15 18:22:09 +0000'
categories: []
tags: []
comments: []
---
<p>Aqui fica um pequeno script para encontrar pastas vazias dentro de uma directoria.Este script utiliza o módulo File::Find::Rule para criar a listagem de todas as directorias e sub-directorias, utilizando uma directoria de partida.Este script pode servir de base para a criação de um script para gerir directorias e apagar directorias vazias caso seja necessário.Para tal basta fazer pequenas alterações .<a id="more"></a><a id="more-209"></a></p>
<p>Para poderem executar este script teram que ter o módulo File::Find::Files instalado , para tal basta executarem o seguinte comando na linha de comandos:</p>
<p>[bash]</p>
<p>sudo cpan</p>
<p>install " File::Find::Rule"</p>
<p>[/bash]</p>
<p>Tendo o módulo instalado já poderam executar este script.</p>
<p>[perl]#!/usr/bin/perl</p>
<p>use strict;</p>
<p>use warnings;</p>
<p>use File::Find::Rule;</p>
<p>my @sub_dirs;</p>
<p>&Main();</p>
<p>sub Main(){<br />
#leitura da directória por argumento<br />
chomp(my $path = $ARGV[0]);</p>
<p>#Listagem de todos os directórios<br />
my $regra_pesquisa = File::Find::Rule->new;<br />
$regra_pesquisa->directory;<br />
@sub_dirs = $regra_pesquisa->in($path);</p>
<p>&AnalisarDirs();<br />
}</p>
<p>sub AnalisarDirs(){<br />
my @emptydirs;<br />
my $file2;</p>
<p>foreach $file2 (@sub_dirs){<br />
opendir(FILE, "$file2") or die($!);<br />
readdir FILE;<br />
readdir FILE;<br />
if(!(readdir FILE)){<br />
print "$file2 : directório vazion";<br />
push(@emptydirs, $file2);<br />
}<br />
closedir(FILE) or die "$!";</p>
<p>}</p>
<p>########Totalizaçao dos directorios###########<br />
my $total = @sub_dirs;<br />
my $vazio = @emptydirs;<br />
print "Total directórios" . $total .", directórios vazios " . $vazio . "n";</p>
<p>}</p>
<p>[/perl]</p>
