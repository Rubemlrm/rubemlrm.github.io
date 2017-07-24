---
layout: post
status: publish
published: true
title: "[MIRC]Auto-Join Script"
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "Este &eacute; um exemplo para criar um script para fazer auto join no irc.\r\n"
wordpress_id: 20
wordpress_url: http://rubemlrm.com/?p=20
date: '2011-09-14 20:24:35 +0000'
date_gmt: '2011-09-14 20:24:35 +0000'
categories: []
tags: []
comments: []
---
<p>Este é um exemplo para criar um script para fazer auto join no irc.<br />
<a id="more"></a><a id="more-20"></a><br />
[quote]<br />
on *:START:{<br />
.server chat.eu.freenode.net -i<br />
.server -m irc.network -i (esta é a sintaxe que você tem que usar para utilizar este script para outras redes.)<br />
}</p>
<p>on *:NOTICE:*This nickname is registered and protected*:*:{<br />
if ($nick == NickServ && $network == freenode ) {<br />
.msg nickserv IDENTIFY }<br />
elseif ($nick == NickServ && $network == ) {<br />
.msg nickserv IDENTIFY }<br />
}</p>
<p>on *:NOTICE:*Password accepted*:*:{<br />
if ($nick == NickServ && $network == freenode) {<br />
join<br />
}<br />
elseif ($nick == NickServ && $network == ) {<br />
join<br />
}<br />
}<br />
[/quote]</p>
<p>Agora irei explicar este script:</p>
<p>1ª Parte :<br />
[quote]<br />
on *:START:{<br />
.server freenode -i<br />
.server -m irc.network -i (esta é a sintaxe que você tem que usar para utilizar este script para outras redes.)<br />
}[/quote]</p>
<p>Nesta parte definimos a que redes é que queremos que o script se ligue. Mas atenção a 2 factores importantes:<br />
-Não esquecer the usar o argumento "-m" no caso de utilizarmos o script para nos ligarmos a várias redes.</p>
<p>2ª Parte:<br />
[quote]<br />
on *:NOTICE:*This nickname is registered and protected*:*:{<br />
if ($nick == NickServ && $network == Freenode ) {<br />
.msg nickserv IDENTIFY }<br />
elseif ($nick == NickServ && $network == ) {<br />
.msg nickserv IDENTIFY }<br />
[/quote]<br />
Neste parte realizamos a identificação do nick .E caso queiram ter várias sessões na mesma rede podem usar um "else if".</p>
<p>3ª Parte:<br />
[quote]<br />
on *:NOTICE:*Password accepted*:*:{<br />
if ($nick == NickServ && $network == freenode) {<br />
join<br />
}<br />
elseif ($nick == NickServ && $network == ) {<br />
join<br />
}<br />
}<br />
[/quote]</p>
<p>Por fim depois de ter identificado o nick , ir&aacute; entrar nos canais que definiu.</p>
