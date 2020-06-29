---
layout: post
status: publish
published: true
title: Declara&ccedil;&atilde;o de vari&aacute;veis em Perl
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "Bem minha gente chegou mais um artigo sobre perl. Desta vez irei focar as
  declara&ccedil;&otilde;es de vari&aacute;veis. Em perl s&oacute; existem tr&ecirc;s
  tipos de vari&aacute;veis. Estas s&atilde;o divididas por hashes , scalar e array.
  A declara&ccedil;&atilde;o de vari&aacute;veis em perl &eacute; um pouco diferente
  das linguagens mais comuns de programa&ccedil;&atilde;o. Mas passando a parte que
  interessa.\r\n\r\n&nbsp;\r\n\r\n"
wordpress_id: 111
wordpress_url: http://rubemlrm.com/?p=111
date: '2012-01-17 22:23:30 +0000'
date_gmt: '2012-01-17 22:23:30 +0000'
categories: []
tags: []
comments: []
---
<p>Bem minha gente chegou mais um artigo sobre perl. Desta vez irei focar as declarações de variáveis. Em perl só existem três tipos de variáveis. Estas são divididas por hashes , scalar e array. A declaração de variáveis em perl é um pouco diferente das linguagens mais comuns de programação. Mas passando a parte que interessa.</p>
<p> </p>
<p><a id="more"></a><a id="more-111"></a></p>
<p style="text-align: center;"><strong>Antes de tudo o que é uma variável e como se caracteriza?</strong></p></p>
<p style="text-align: left;">Uma variável é um "objecto" que contem informação útil para o contexto de programação.Uma variável é caracterizada por 3 coisas:</p></p>
<p style="text-align: left;"><strong>-Nome:</strong> Nas boas práticas de programação devemos nomear as variáveis da seguinte forma:</p></p>
<ul>
<li>Primeiro carácter tem que ser uma letra;</li>
<li>Podem-se utilizar números no nome da variável , mas nunca como primeiro carácter;</li>
<li>Segundo as regras de boa programação os nomes das variáveis tem que estar em minúsculas;</li>
<li>Caso seja um junção de palavras a segunda palavra tem que ser em maiúsculas . Ex: testePL.</li><br />
</ul><br />
<strong>-Tipo de variável</strong>: Em perl os  tipos de variáveis são:</p>
<ul>
<li>hash(%)</li>
<li>array(@)</li>
<li>scalar($)</li><br />
</ul><br />
Para quem de vem de fora pode achar estranho não ter que declarar se uma variável escalar é do tipo integer , float , string , etc. Isto porque o perl identifica isso de forma autónoma.</p>
<p> </p>
<p><strong>-Valor :</strong> Ao seja o valor que a variável vai ter perante o programa. Este valor pode ser escalar , do tipo array ou hash.</p>
<p> </p>
<p style="text-align: center;"><strong>Hash , array , scalar ?! O que é isso</strong></p></p>
<p style="text-align: left;">Estes são os três tipos de variáveis em perl .E irei explicar cada uma delas.</p></p>
<p style="text-align: left;">Uma <strong>variável escalar</strong> é uma variável que só tem um elemento/valor atribuído .Com isto não quero dizer que só pode ter um número ou só pode ter uma palavra. Porque podemos criar um valor com várias palavras  ou com vários números.</p></p>
<p style="text-align: left;">ex:</p></p>
<p style="text-align: left;">[perl] my $nome = Rubem ; [/perl]</p><br />
[perl] my $morada = "Portugal , União Europeia";</p>
<p>#Atenção caso se queira declarar uma variável scalar desta forma tem que se usar os " " ou '  '</p>
<p>[/perl]</p>
<p>[perl]my $numero = 7110432[/perl]</p>
<p> </p>
<p>Um<strong> array é uma variável "lista"</strong> ao seja tem mais do que um valor atribuido. E vocês pensam agora assim então mas qual é a diferença entre scalar e array.A diferença é simples um um array pode ter vários scalar's mas um scalar se for igualado a um array só vai ficar com o valor igual ao número de elementos do array.</p>
<p>Ex:</p>
<p>[perl]my @array = (teste, seila, portugal);[/perl]</p>
<p>[perl] my $val = @array;</p>
<p>#a var val vai ficar com o valor de 3 que é o número de elementos do array</p>
<p>[/perl]</p>
<p>Depois de ter explicado a diferença entre escalar e array vou mostrar como se podem criar arrays:</p>
<p>[perl]my @array = (1..10);</p>
<p>#neste caso estamos a dizer que o array vai ter todos os valores desde o 1 até ao 10[/perl]</p>
<p>[perl]my @array = (teste, tx, px);</p>
<p>#nesta situação criei um array com 3 elementos separado por "," que indicam que é outro elemento[/perl]</p>
<p>[perl]my @array = qw(teste tx pc);</p>
<p>#desta vez introduzi um conceito novo o qw ao seja ele vai assumir cada palavra como um elemento novo. ATENÇÃO: o qw funciona de forma diferente com prints[/perl]</p>
<p> </p>
<p>Para finalizar este artigo vou falar sobre <strong>hash's</strong> também conhecidas por listas associativas. Ao seja uma numa hash cada item vai ter um valor associado .São variáveis "bidimensionais" porque têm duas listas em que um inclui o valor chave e a outra inclui o valor correspondente.</p>
<p>Ex:</p>
<p>[perl]</p>
<p>my %hash = ("linha1" => "Teste");</p>
<p>#o linha1 é a chave e o Teste é o valor associado a essa chave.</p>
<p>[/perl]</p>
<p>De referir que cada chave só pode ter um valor. O exemplo acima demonstra como se pode definir uma hash mas existe outra opção para fazer o mesmo, que é o seguinte:</p>
<p> </p>
<p>[perl]</p>
<p>my %hash = ("linha1" , Teste);</p>
<p>[/perl]</p>
<p><strong> Nota:Tanto para os arrays como para os hash nós podemos aceder a hash/array como um todo ou a uma determinada posição da hash. Atenção tanto uma como outra começa a lista no zero ao seja o primeiro valor tem posição zero.</strong></p>
<p>E com isto dou por finalizado este artigo .É importante referir que este artigo serviu só para saberem as diferenças e como declararem váriaveis. Num futuro artigo irei falar de como se pode manusear arrays e hashs e de que forma podem ser usadas.</p>
