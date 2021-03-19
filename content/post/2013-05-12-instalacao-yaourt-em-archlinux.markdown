---
categories:
- Archlinux
- Tutorial
date: "2013-05-12T16:28:59Z"
date_gmt: 2013-05-12 16:28:59 +0000
excerpt_separator: <!--more-->
title: Instalação do yaourt em ArchLinux
---

Como utilizador de archlinux já há uns anos , surgiu a necessidade de instalar pacotes que estão disponíveis no AUR . No entanto instalar software que está disponível no AUR pode ser um pouco demoroso e tive necessidade de encontrar uma alternativa viável que me pudesse gerir as instalações a partir do AUR como a partir dos repos oficiais.

!["arch logo"](https://www.archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png)

<!--more-->

Como tal encontrei o software yaourt que funciona como gestor de pacotes.Umas das principais mais valias deste gestor de pacotes é que dá para gerir de forma centralizada a instalação dos pacotes tanto de repos AUR como de repos oficias.

Como tal vou deixar aqui um pequeno tutorial de como instalar este software e algumas dicas de utilização. Inicialmente será necessário editar o ficheiro **/etc/pacman.conf** e adicionar as seguintes entradas:

{{< highlight shell >}}
[archlinuxfr]
  SigLevel = Never
  Server = http://repo.archlinux.fr/$arch
{{< / highlight >}}

Após este passo iremos actualizar o sistema e instalar o yaourt ,para tal basta correr o seguinte comando como root:

{{< highlight shell >}} sudo pacman -Sy yaourt{{< / highlight >}}

E pronto temos o yaourt instalado =) simples não foi ?
Agora irei deixar alguns exemplos de utilização do mesmo. Para fazer pesquisa e instalação de um pacote basta executar o comando:

{{< highlight shell >}} yaourt <pesquisa>{{< / highlight >}}
<img class="aligncenter" alt="" src="http://archlinux.fr/wp-content/uploads/2007/06/yaourt_2.png" width="686" height="169" />

Para sincronizar as bases de dados , actualizar e fazer pesquisas no aur basta executar o seguinte comando:

{{< highlight shell >}} yaourt -Syu --devel --aur{{< / highlight >}}

Caso queira actualizar só o sistema e o aur fazem

{{< highlight shell >}} yaourt -Syua{{< / highlight >}}

Para compilar um pacote atravez do código fonte podem utilizar o comando:

{{< highlight shell >}} yaourt -Sb <pacote> {{< / highlight >}}

Estes são dos comandos mais utilizados , no entanto existe um leque enorme de possiveis comandos que podem ser executados. De referir ainda que devem executar o yaourt sempre como utilizador "normal" visto que durante a instalação dos pacotes será sempre pedida a vossa password , desta forma irão ter mais controlo sobre o que está a ser instalado.
