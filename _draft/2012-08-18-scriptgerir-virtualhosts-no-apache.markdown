---
layout: post
status: publish
published: true
title: "\uFEFF\uFEFF[Script]Gerir VirtualHosts do Apache"
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "Ora boas tardes,\r\n\r\nDepois de algum tempo sem escrever nada no blog
  , trago-vos um script em perl acabado de sair do forno que nos permite adicionar
  , remover , listar , verificar ,&nbsp;desativar&nbsp;os nossos virtualhosts.\r\n\r\nPara
  tal temos temos ao nosso dispor as seguintes op&ccedil;&otilde;es:\r\n<ul>\r\n\t<li><strong>-add<&#47;strong>
  : para adicionar um virtualhost no apache , para tal basta usar a seguinte sintax:<&#47;li>\r\n<&#47;ul>\r\n<span
  style=\"font-size: medium;\"><span style=\"line-height: 24px;\">"
wordpress_id: 659
wordpress_url: http://rubemlrm.com/?p=659
date: '2012-08-18 15:07:32 +0000'
date_gmt: '2012-08-18 15:07:32 +0000'
categories: []
tags: []
comments: []
---
<p>Ora boas tardes,</p>
<p>Depois de algum tempo sem escrever nada no blog , trago-vos um script em perl acabado de sair do forno que nos permite adicionar , remover , listar , verificar , desativar os nossos virtualhosts.</p>
<p>Para tal temos temos ao nosso dispor as seguintes opções:</p>
<ul>
<li><strong>-add</strong> : para adicionar um virtualhost no apache , para tal basta usar a seguinte sintax:</li><br />
</ul><br />
<span style="font-size: medium;"><span style="line-height: 24px;"><a id="more"></a><a id="more-659"></a>                 [shell]sudo ./apache -add <url>
<pasta>[/shell]</span></span></p>
<p>ex:</p>
<p>[shell]sudo ./apache -add www.rubemlrm.com rubemlrm[/shell]</p>
<ul>
<li> <strong> -rem</strong> : para remover um virtualhost no apache, para tal basta usar a seguinte sintax:</li><br />
</ul><br />
[shell]sudo ./apache -rem <url>[/shell]</p>
<p>ex:</p>
<p>[shell]sudo ./apache -rem www.rubemlrm.com[/shell]</p>
<ul>
<li> <strong>  -dis</strong> : para desativar um virtualhost no apache , para tal basta usar a seguinte syntax:</li><br />
</ul><br />
<span style="font-size: medium;"><span style="line-height: 24px;">                [shell]sudo ./apache -dis <url>[/shell]</span></span></p>
<p>ex:</p>
<p>[shell]sudo ./apache -dis www.rubemlrm.com[/shell]</p>
<ul>
<li><strong>-c</strong> :Esta opção poderá receber um argumento que é o <url> para mostrar a informação do virtualhost , caso não se passe o argumento do url irá mostrar todos os .conf que estão na diretoria /etc/apache2/sites-enabled/. Para tal basta usar a seguinte sintax:</li><br />
</ul><br />
<span style="font-size: medium;"><span style="line-height: 24px;">               </span></span><span style="line-height: 24px; font-size: medium;">[shell]sudo ./apache -c #irá listar todos os .conf da directoria[/shell] </span></p>
<p>ou</p>
<p>[shell]sudo ./apache -c www.rubemlrm.com #para mostrar o conteudo do .conf deste url[/shell]</p>
<ul>
<li><strong>-h</strong> : Por fim temos esta opção para nos mostrar os comandos que temos disponíveis.</li><br />
</ul><br />
<span style="font-size: medium;"><span style="line-height: 24px;">                 [shell]./apache -h[/shell]</span></span></p>
<p> </p>
<p><span style="font-size: medium;"><span style="line-height: 24px;">           De seguida fica o código do script:</span></span></p>
{% gist rubemlrm/3387796 %}

