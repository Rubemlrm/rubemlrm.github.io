---
title: "[Script]Gerir VirtualHosts do Apache"
layout: post
status: publish
excerpt_separator: <!--more-->
categories:
 - script
---

Ora boas tardes,

Depois de algum tempo sem escrever nada no blog , trago-vos um script em perl acabado de sair do forno que nos permite adicionar , remover , listar , verificar , desativar os nossos virtualhosts.

<!--more-->

Para tal temos temos ao nosso dispor as seguintes opções:
* **-add** : para adicionar um virtualhost no apache , para tal basta usar a seguinte sintax: {% highlight shell %}sudo ./apache -add {% endhighlight %}
  * ex: {% highlight shell %}sudo ./apache -add www.rubemlrm.com rubemlrm{% endhighlight shell %}
*  **-rem**: para remover um virtualhost no apache, para tal basta usar a seguinte sintax: {% highlight shell %}sudo ./apache -rem {% endhighlight %}
  * ex: {% highlight shell %}sudo ./apache -rem www.rubemlrm.com{% endhighlight %}

*  **-dis** : para desativar um virtualhost no apache , para tal basta usar a seguinte syntax: {% highlight shell %}sudo ./apache -dis {% endhighlight %}
ex: {% highlight shell %} sudo ./apache -dis www.rubemlrm.com {% endhighlight %}
*  **-c** :Esta opção poderá receber um argumento que é o <url> para mostrar a informação do virtualhost , caso não se passe o argumento do url irá mostrar todos os .conf que estão na diretoria /etc/apache2/sites-enabled/. Para tal basta usar a seguinte sintax: {% highlight shell %}sudo ./apache -c #irá listar todos os .conf da directoria{% endhighlight %} 
ou
{% highlight shell %}sudo ./apache -c www.rubemlrm.com #para mostrar o conteudo do .conf deste url{% endhighlight %}
*  **-h** : Por fim temos esta opção para nos mostrar os comandos que temos disponíveis. {% highlight shell %}./apache -h{% endhighlight %}

	De seguida fica o código do script:

{% gist rubemlrm/3387796 %}
