---
layout: post
status: publish
published: true
title: Ciclos de Controlo:"If..else" e "If..elsif.." em Perl
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: E aqui vem o 3&ordm; artigo relativo aos artigos de perl. Neste artigo vou-vos
  ensinar a utilizar um dos ciclos de controlo mais utilizados em programa&ccedil;&atilde;o
  que &eacute; o ciclo <strong>"if..else"<&#47;strong> e sua forma complexa <strong>"if..elsif"<&#47;strong>
  .Este ciclo serve para controlar o fluxo de dados de um programa, no sentido de
  que se uma condi&ccedil;&atilde;o for verdadeira vai realizar uma ac&ccedil;&atilde;o
  e se for falsa vai realizar outra.
wordpress_id: 118
wordpress_url: http://rubemlrm.com/?p=118
date: '2012-01-17 23:19:10 +0000'
date_gmt: '2012-01-17 23:19:10 +0000'
categories: []
tags: []
comments: []
---
<p>E aqui vem o 3º artigo relativo aos artigos de perl. Neste artigo vou-vos ensinar a utilizar um dos ciclos de controlo mais utilizados em programação que é o ciclo <strong>"if..else"</strong> e sua forma complexa <strong>"if..elsif"</strong> .Este ciclo serve para controlar o fluxo de dados de um programa, no sentido de que se uma condição for verdadeira vai realizar uma acção e se for falsa vai realizar outra.<a id="more"></a><a id="more-118"></a></p>
<p>O<strong> ciclo "if..else"</strong> divide-se em duas partes:</p>
<p>[perl]if (condição) {</p>
<p>#bloco de código1</p>
<p>}else{</p>
<p>#bloco de código2</p>
<p>}</p>
<p>[/perl]</p>
<p>Como podem ver tem uma estrutura muito simples .Mas para facilitar a vossa compreensão de como isto funciona vou explicar passo a passo o que está neste exemplo.</p>
<p>[perl]if (condição) {</p>
<p>#na primeira linha inicio o ciclo if dizendo que tem que verificar a condição que está entre "()"<strong>, </strong>caso esta condição seja verdadeira , irá ser #executado o bloco de código1</p>
<p>}else { #caso seja falso irá executar o bloco de código2</p>
<p>bloco de código2</p>
<p>}#não esquecer dos <strong>{}</strong></p>
<p>[/perl]</p>
<p> </p>
<p>A primeira vez pode ser um pouco complicado .Mas agora vou dar um exemplo prático .Imaginem que que queremos fazer um script que analise um valor introduzido e diga se é negativo ou positivo. Para tal fazemos o seguinte.</p>
<p> </p>
<p>[perl]</p>
<p>#!/usr/bin/perl -w<br />
use strict;<br />
print "Introduza um númeron";<br />
chomp(my $val = <STDIN>);</p>
<p>if($val > 0){<br />
print "número é positivon";<br />
}else{<br />
print "número é negativon";<br />
}</p>
<p>[/perl]</p>
<p>Nesta situação utilizamos o if para verificar se o número é positivo ou negativo. E agora vocês perguntam-se então e se tivermos mais do que 2 condições para analisar ou então neste programa de ver se é positivo ou negativo como fazemos se o número for 0. Bem para lidar com essas situações temos uma derivação do ciclo If que é o "if .. elsif".</p>
<p>A sua estrutura de trabalho é bastante parecida ao ciclo if simples , só que neste caso temos 2 ou mais condições para verificar. De seguida fica a estrutura de um ciclo "if..elsif".</p>
<p>[perl]</p>
<p>if (condição) {</p>
<p>#na primeira linha inicio o ciclo if dizendo que tem que verificar a condição que está entre <strong>"()", </strong>caso esta condição seja verdadeira , irá ser #executado o bloco de código1</p>
<p>#bloco de código1</p>
<p>}elsif(condição){ #caso a primeira condição não seja verdade o ciclo irá verificar a segunda condição.</p>
<p>#bloco de código2</p>
<p>}else{#por fim caso nenhuma destas condições sejam verdadeiras então irá executar o bloco de código 3</p>
<p>#bloco de código3</p>
<p>}</p>
<p>[/perl]</p>
<p> </p>
<p>Como podem ver  este tipo de estrutura oferece um controlo de dados um pouco mais complexa. Como não poderia de deixar de fazer vou deixar um exemplo prático deste ciclo .E como tal vou pegar no programa anterior e irei usar este ciclo para verificar se o valor introduzido é 0.</p>
<p> </p>
<p>[perl]</p>
<p>#!/usr/bin/perl -w<br />
use strict;<br />
print "Introduza um númeron";<br />
chomp(my $val = <STDIN>);</p>
<p>if($val > 0){<br />
print "número é positivon";<br />
}elsif($val < 0){<br />
print "número é negativon";<br />
}else{<br />
print "o valor é nulo";<br />
}</p>
<p>[/perl]</p>
<p> </p>
<p>E dou por terminado este artigo. Qualquer questão podem me contactar pelo twitter ou deixando um comentário</p>
