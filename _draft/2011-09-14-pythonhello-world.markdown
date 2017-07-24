---
layout: post
status: publish
published: true
title: "[Python]Hello World "
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "Muitos de v&oacute;s j&aacute; ouviram falar de python e tiveram curiosidade
  em saber como programar em python. E com este artigo vou explicar algumas coisas
  de python mas apenas coisas b&aacute;sicas.\r\n\r\nE como tal vou utilizar o t&atilde;o
  conhecido \"Hello World\" que &eacute; o programa da praxe em todas as linguagens
  de programa&ccedil;&atilde;o.\r\n\r\nAntes de come&ccedil;ar-mos a programar em
  python temos que instalar o software necess&aacute;rio.Para isso basta ir ao site
  da <a href=\"http:&#47;&#47;www.python.org&#47;download&#47;\">Python<&#47;a> &nbsp;e
  fazerem download da aplica&ccedil;&atilde;o para os vossos sistemas operativos.Caso
  utilizem Linux&#47;Unix j&aacute; devem trazer instalado o python para tal basta
  abrir o terminal e escrever \"python\" se der erro &eacute; porque n&atilde;o est&aacute;
  instalado e ter&atilde;o que seguir as informa&ccedil;&otilde;es de instala&ccedil;&atilde;o
  para o vosso sistema.\r\n\r\nDe referir que podem criar programas em python em programas
  como o notepadd ++ mas n&atilde;o o poder&atilde;o executar sen&atilde;o tiverem
  o python instalado no pc.\r\n\r\nAgora vamos passar para a programa&ccedil;&atilde;o&nbsp;propriamente&nbsp;dita.\r\nImaginem
  que querem que o programa imprima alguma coisa no ecr&atilde; quando &eacute; executado
  , para tal basta escreverem isto no ficheiro do vosso programa:\r\n\r\n&nbsp;\r\n\r\n[python]print
  \"Bom dia pessoal\" [&#47;python]\r\n\r\n"
wordpress_id: 13
wordpress_url: http://rubemlrm.com/?p=13
date: '2011-09-14 19:56:39 +0000'
date_gmt: '2011-09-14 19:56:39 +0000'
categories: []
tags: []
comments: []
---
<p>Muitos de vós já ouviram falar de python e tiveram curiosidade em saber como programar em python. E com este artigo vou explicar algumas coisas de python mas apenas coisas básicas.</p>
<p>E como tal vou utilizar o tão conhecido "Hello World" que é o programa da praxe em todas as linguagens de programação.</p>
<p>Antes de começar-mos a programar em python temos que instalar o software necessário.Para isso basta ir ao site da <a href="http://www.python.org/download/">Python</a>  e fazerem download da aplicação para os vossos sistemas operativos.Caso utilizem Linux/Unix já devem trazer instalado o python para tal basta abrir o terminal e escrever "python" se der erro é porque não está instalado e terão que seguir as informações de instalação para o vosso sistema.</p>
<p>De referir que podem criar programas em python em programas como o notepadd ++ mas não o poderão executar senão tiverem o python instalado no pc.</p>
<p>Agora vamos passar para a programação propriamente dita.<br />
Imaginem que querem que o programa imprima alguma coisa no ecrã quando é executado , para tal basta escreverem isto no ficheiro do vosso programa:</p>
<p> </p>
<p>[python]print "Bom dia pessoal" [/python]</p>
<p><a id="more"></a><a id="more-13"></a><br />
No exemplo acima demonstrado temos 2 coisas que é importante referir:</p>
<p><strong>print</strong> -> com este comando vamos imprimir variáveis/frases para o ecrã ;</p>
<p><strong>"Bom dia pessoal"</strong> -> A string que vai ser impressa , atenção que têm que estar entre <strong>" "</strong>;</p>
<p>Até aqui não há grandes dúvidas da simplicidade do python , mas agora vamos dinamizar um bocado o nosso código de forma a que passe a ler aquilo que o utilizador introduz. Para tal temos que utilizar a seguinte sintax:</p>
<p>[python]nome = raw_input ("Qual é o seu nome?")[/python]</p>
<p>Neste exemplo estamos a declarar que a variavel que neste caso é o <strong>"nome"</strong> vai ter o valor que for adquirido com o <strong>"raw_input"</strong>.<br />
O <strong>"raw_input"</strong> irá ler e guardar a informação que o utilizador escreveu quando respondeu ao que se perguntava/pedia na <strong>"("Qual é o seu nome?")".</strong><br />
Atenção que o nome da variável que ira ser utilizada na ultima parte tem que ser igual a variavel que iniciamos , ao seja se dissermos que a variável <strong>x</strong> é igual ao raw input da pergunta y , essa pergunta tem que ter um campo <strong>x</strong> porque senão o que introduzirmos não vai ser associado.</p>
<p><strong> </strong><br />
Agora iremos pegar nos dois exemplos acima demonstrados e vamos criar um pequeno script que vai perguntar o nome e posteriormente irá imprimir uma frase com o nome que foi introduzido.</p>
<p>[python]nome = raw_input ("Qual é o seu nome? : ")<br />
print "Ola " + nome + " é um prazer conhece-lo."[/python]</p>
<p>Ao verem este exemplo poderão estranhar o que fazem ali os "+" bem o "+" é um símbolo de concatnação que une várias strings para formar uma "compound string".De referir ainda que em nenhum dos exemplos definimos o tipo de variável que iríamos utilizar.</p>
