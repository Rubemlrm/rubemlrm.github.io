---
layout: post
status: publish
published: true
title: Operadores em Perl
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "<p style=\"text-align: justify;\">Boa tarde , venho desta forma iniciar
  mais um capitulo para esta rubrica de&nbsp;tutoriais&nbsp;para o perl. Desta vez
  irei falar de operadores de compara&ccedil;&atilde;o, operadores de strings e operadores
  aritm&eacute;ticos. O que s&atilde;o e para que servem ? Bem esta vai ser a quest&atilde;o
  deste tutorial.Mas sem mais demoras vou iniciar este tutorial.<&#47;p>\r\n"
wordpress_id: 125
wordpress_url: http://rubemlrm.com/?p=125
date: '2012-01-18 19:58:45 +0000'
date_gmt: '2012-01-18 19:58:45 +0000'
categories: []
tags: []
comments: []
---
<p style="text-align: justify;">Boa tarde , venho desta forma iniciar mais um capitulo para esta rubrica de tutoriais para o perl. Desta vez irei falar de operadores de comparação, operadores de strings e operadores aritméticos. O que são e para que servem ? Bem esta vai ser a questão deste tutorial.Mas sem mais demoras vou iniciar este tutorial.</p><br />
<a id="more"></a><a id="more-125"></a></p>
<p style="text-align: center;"><strong>Operadores de Comparação</strong></p></p>
<p style="text-align: justify;">Como ponto de partida vou falar sobre os operadores de comparação. Estes operadores servem para comparar strings e/ou números .Mas utilizam nomenclaturas diferentes , ao seja o operador de uma string é diferente do operador de um número. E é importante nunca trocar os operadores porque podem ficar com erros no vosso programa e depois perderem algum tempo a procura do erro.</p></p>
<p style="text-align: justify;">Por exemplo se quisermos comparar números temos que usar operadores matemáticos, tais como "< > =" enquanto que com strings utilizamos operadores orientados para strings , tais como "eq , ne , et".Inicialmente isto pode parecer estranho porque não se sabe o seu significado .Mas para vos ajudar a aprender isso coloco aqui uma tabela com o significado dos operadores e seus equivalentes entre string e números.<br />
Ex:</p><br />
[perl]a < b ;<br />
#nesta situação estamos a dizer que o b é maior que o a;</p>
<p>a eq b ;<br />
#Nesta situação estamos a comparar duas variáveis strings e como tal temos que usar os operadores para string.</p>
<p>1 eq "teste";<br />
#Isto está errado visto que não se podem nem comparar strings com números</p>
<p>"teste" == "teste";<br />
#isto esta errado porque estamos a utilizar um operador de comparação numérico num situação em que estamos a comparar #strings</p>
<p>[/perl]</p>
<p style="text-align: center;"><strong>Tabela relativa aos operadores de comparação</strong></p></p>
<table border="1px">
<tbody>
<tr>
<th>Comparação</th></p>
<th>Numéricos</th></p>
<th>Strings</th><br />
</tr></p>
<tr>
<td>Igual</td></p>
<td>==</td></p>
<td>eq</td><br />
</tr></p>
<tr>
<td>Diferentes</td></p>
<td>!=</td></p>
<td>ne</td><br />
</tr></p>
<tr>
<td>Menor do que</td></p>
<td><</td></p>
<td>lt</td><br />
</tr></p>
<tr>
<td>Maior do que</td></p>
<td>></td></p>
<td>gt</td><br />
</tr></p>
<tr>
<td>Menor ou igual a</td></p>
<td>=<</td></p>
<td>le</td><br />
</tr></p>
<tr>
<td>Maior ou igual</td></p>
<td>></td></p>
<td>ge</td><br />
</tr></p>
<tr>
<td>Equivalência</td></p>
<td>< =></td></p>
<td>cmp</td><br />
</tr><br />
</tbody><br />
</table></p>
<p style="text-align: center;"><strong>Operadores Aritméticos</strong></p></p>
<p style="text-align: justify;">Os operadores aritméticos ou "sinais de operações matemáticas" são a mesma coisa , mas em linguagens de programação são usadas de forma um pouco diferente. Mas visto que não é necessário explicar cada um , deixo aqui uma pequena tabela com os operadores e sua actualização.</p></p>
<table border="1px">
<tbody>
<tr>
<th>Operador</th></p>
<th>Função</th><br />
</tr></p>
<tr>
<td>+</td></p>
<td>Soma</td><br />
</tr></p>
<tr>
<td>-</td></p>
<td>Subtração</td><br />
</tr></p>
<tr>
<td>*</td></p>
<td>Multiplicação</td><br />
</tr></p>
<tr>
<td>/</td></p>
<td>Divisão</td><br />
</tr></p>
<tr>
<td>**</td></p>
<td>Expoente</td><br />
</tr></p>
<tr>
<td>%</td></p>
<td>Resto de divisão</td><br />
</tr><br />
</tbody><br />
</table></p>
<p style="text-align: center;">Operadores lógicos</p></p>
<p style="text-align: justify;">Estes operadores servem para realizar operações do tipo boolean(1 ou 0 / Verdadeiro ou falso).Só existem 3 operadores lógicos como a tabela abaixo demonstra.</p></p>
<table border="1px">
<tbody>
<tr>
<th>Operador</th></p>
<th>Operador(alternativa)</th></p>
<th>Significado</th><br />
</tr></p>
<tr>
<td>&&</td></p>
<td>and</td></p>
<td>"E" lógico</td><br />
</tr></p>
<tr>
<td>||</td></p>
<td>or</td></p>
<td>"And" lógico</td><br />
</tr></p>
<tr>
<td>!</td></p>
<td>not</td></p>
<td>Negação</td><br />
</tr><br />
</tbody><br />
</table><br />
Ex:<br />
[perl]1 && 2;<br />
#Caso o valor 1 e 2 sejam verdadeiros então o retorno desta operação vai ser verdadeiro.[/perl]</p>
<p>[perl]1 or 2;<br />
#caso um dos valores seja verdadeiro retorna o valor de verdadeiro[/perl]</p>
<p>[perl]!2;<br />
#com este ultimo operador nega todos os valores associados a este operador.<br />
[/perl]</p>
