---
layout: post
status: publish
published: true
title: Introdu&ccedil;&atilde;o ao Perl
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "&nbsp;\r\n\r\nQuem j&aacute; ouviu falar de Perl e quis aprender e depois
  pensou mas como &eacute; que vou aprender isto , ou melhor de que maneira &eacute;
  que vou aprender Perl.E para que serve o Perl. A&nbsp; pensar nessas quest&otilde;es
  criei esta rubrica para vos mostrar como fazer algumas coisas. Para que servem algumas
  fun&ccedil;&otilde;es entre outros aspectos importantes de referir.\r\n\r\n&nbsp;\r\n\r\n<img
  class=\"aligncenter\" title=\"perl\" src=\"http:&#47;&#47;seeklogo.com&#47;images&#47;P&#47;PERL-logo-392C2FBE62-seeklogo.com.gif\"
  alt=\"\" width=\"200\" height=\"200\" &#47;>\r\n\r\n"
wordpress_id: 95
wordpress_url: http://rubemlrm.com/?p=95
date: '2011-12-30 17:14:24 +0000'
date_gmt: '2011-12-30 17:14:24 +0000'
categories: []
tags: []
comments: []
---
<p> </p>
<p>Quem já ouviu falar de Perl e quis aprender e depois pensou mas como é que vou aprender isto , ou melhor de que maneira é que vou aprender Perl.E para que serve o Perl. A  pensar nessas questões criei esta rubrica para vos mostrar como fazer algumas coisas. Para que servem algumas funções entre outros aspectos importantes de referir.</p>
<p> </p>
<p><img class="aligncenter" title="perl" src="http://seeklogo.com/images/P/PERL-logo-392C2FBE62-seeklogo.com.gif" alt="" width="200" height="200" /></p>
<p><a id="more"></a><a id="more-95"></a></p>
<p>Este artigo vai estar divido em 3 partes:</p>
<ul>
<li> Perl o que é ?</li>
<li>O que é necessário para correr perl?</li>
<li>Introdução a conceitos básicos.</li><br />
</ul><br />
 </p>
<p style="text-align: center;"><strong>Perl o que é?</strong></p><br />
A linguagem de programação PERL foi desenvolvida em 1987 por Larry Wall e serviu de base para muitas linguagens modernas de programação , tais como javascript , ruby , etc... O perl é caracterizado por ser uma linguagem de programação amplamente usada por administradores de sistemas , hackers , crackers  e  webdevelopers.Tem os seguintes pontos fortes:</p>
<ul>
<li>Extremamente rápida a trabalhar com strings/arrays/hash's/regex's;</li>
<li>Corre em mais de 100 plataformas diferentes;</li>
<li>Pode ser utilizada para webdevelopment , desempenhando papeis geralmente ocupados por php/asp/etc;</li>
<li>Suporte unicode;</li>
<li>Actualmente permite programação orientada a objectos e também procedural ;</li>
<li>Tem uma enorme comunidade de developers que desenvolvem módulos para agilizar o trabalho dos programadores. Para termos acesso a esses módulos basta ir ao site CPAN.</li>
<li>Suporta integração com bases de dados;</li>
<li>No entanto é uma linguagem mais orientada para scripting , ao seja pequenos programas para automatizar tarefas.</li><br />
</ul></p>
<p style="text-align: center;"><strong>O que é necessário para correr perl?</strong></p></p>
<p style="text-align: left;">Para correr o perl nas nossa máquinas é preciso ter o perl instalado , em sistemas *Unix e MacOS o Perl já vem instalado por defeito. Em sistemas Windows basta fazer download da aplicação <a title="Strawberry Perl" href="http://strawberryperl.com/" target="_blank">Strawberry Perl</a> e instalar e ficarão com o perl instalado no vosso computador.</p></p>
<p style="text-align: left;">Para programarem em Perl eu recomendo o software <a title="Padre Perl" href="http://padre.perlide.org/" target="_blank">Padre Perl</a> (corre em sistemas Linux e Windows) ou então utilizem o <a title="Eclipse" href="http://www.eclipse.org/" target="_blank">eclipse</a> com o plugin <a title="EPIC IDE" href="http://www.epic-ide.org/" target="_blank">Epic IDE</a></p></p>
<p style="text-align: center;"><strong>Introdução aos conceitos básicos</strong></p><br />
E finalmente chegamos a parte mais pratica deste artigo. Aqui irei mostrar como criar um programa que imprime uma mensagem para o ecrã e outro que vos irá pedir o nome e imprimir uma mensagem de boas vindas. Então mãos a obra. Depois de abrirem o vosso IDE. Escrevam o seguinte e guardem o ficheiro como helloworld.pl . De referir o .pl refere-se a extensão que os scripts em perl tem. Então depois de copiarem este pequeno script façam executar no vosso IDE para verem o resultado.</p>
<p>[perl]</p>
<p>#!/usr/bin/perl</p>
<p>use warnings ;</p>
<p>use strict;</p>
<p>print "Bem vindos ao Perl";</p>
<p>[/perl]</p>
<p>Agora começam a pensar mas então o que e que e cada coisa que está ali .Para mim parece chinês use isto , print aquilo .Bem é bastante fácil de entender  e irei explicar passo a passo cada coisa para que vocês fiquem a perceber tudo.</p>
<p>[perl]</p>
<p>#!/usr/bin/perl</p>
<p>[/perl]</p>
<p>Esta linha é bastante importante , é logo a primeira linha a ser escrita e não pode ter espaços nem ficar na segunda linha do script porque senão irá dar erro. Quando um interpretador executa um ficheiro perl , ele tem que saber que o ficheiro em questão é um ficheiro perl e que tipo de interpretador e que tem usar e nesta linha nós indicamos isso.</p>
<p> </p>
<p>[perl]</p>
<p>use warnings;</p>
<p>use strict;</p>
<p>[/perl]</p>
<p>Nesta situação usamos 2 pragmas , um pragma é uma extensão ao programa. Ao seja vamos incluir funções que não vem por defeito num script. Para tal temos que usar a função <strong>use</strong> seguida do nome do pragma. Neste caso usei o pragma warnings e strict. O pragma warnings é responsável por nos avisar de possíveis erros de sintaxe ou mesmo de programação. Enquanto que o pragma Strict permite uma melhor organização e estrutura a nível de sintaxe , declaração de variáveis , procedimentos , etc.</p>
<p>[perl]</p>
<p>print "Bem vindos ao Perl";</p>
<p>[/perl]</p>
<p>Por fim a função <strong>print</strong> , esta função irá imprimir para o ecrã aquilo que declaramos.</p>
<p>Agora iremos criar um pequeno programar que irá pedir o nome de utilizador e imprimir uma mensagem de boas vindas no ecrã.</p>
<p>[perl]</p>
<p>#!/usr/bin/perl</p>
<p>use warnings ;</p>
<p>use strict;</p>
<p>print "Introduza o seu nomen";</p>
<p>my $nome = <STDIN>;</p>
<p>chomp ($nome) ;</p>
<p>print "Bem vindos ao Perl $nome";</p>
<p>[/perl]</p>
<p>Neste script introduzi 5 funções novas:</p>
<ul>
<li><strong>my</strong>: Esta função é usada para declarar qualquer tipo de variáveis. Mas a sua utilização só e obrigatória se tivermos usado o pragma strict. Caso não tenhamos usado só é obrigatório utilizar dentro de funções(mas isso fica para outro tutorial ;) );</li>
<li><strong>$nome:</strong> é a nossa variável , para se declarar uma variável usa-se o simbolo <strong>$</strong> ;</li>
<li><strong><STDIN></strong> : Esta função é utilizada para ler o que é introduzido pelo teclado.Ao estarmos a igual a variavel $nome a esta função , estamos a dizer que a variável nome ira ter o valor do <STDIN> ;</li>
<li><strong>n</strong> : usando esta expressão num <strong>print</strong> iremos dizer ao programa que depois de imprimir o conteúdo do print deverá criar um nova linha(carregar no enter) ;</li>
<li><strong>chomp</strong> : esta função é das mais importantes que se podem utilizar , visto que elimina os n de todos os valores da variável que queremos.</li>
<li>Por fim no print chama-mos a variável $nome e ira imprimir o seu valor.</li><br />
</ul><br />
Já agora fica uma pequena dica ;)</p>
<p>Em vez de fazerem isto :</p>
<p>[perl]</p>
<p>my $nome = <STDIN>;</p>
<p>chomp ($nome) ;</p>
<p>[/perl]</p>
<p>Podem fazer logo isto :</p>
<p>[perl]chomp(my $nome = <STDIN>); [/perl]</p>
<p>Que alem de deixar o código mais organizado , agiliza a escrita de código.</p>
<p> </p>
