---
layout: post
status: publish
published: true
title: Gerir Cron's com o Perl
author:
  display_name: Rubem Mota
  login: Rubemlrm
  email: rubemmota89@gmail.com
  url: http://rubemlrm.com
author_login: Rubemlrm
author_email: rubemmota89@gmail.com
author_url: http://rubemlrm.com
excerpt: "Bem pessoal aqui fica um pequeno script para vos ajudar a a automatizar
  as vossas tarefas quando tiverem que mexer em crontabs.Este script surgiu numa aula
  de Sistemas Operativos em que t&iacute;nhamos um exerc&iacute;cio em que t&iacute;nhamos
  que adicionar novos crons com o script. Mas para n&atilde;o limitar o script acrescentei
  mais umas fun&ccedil;&otilde;es.Tais como tornar a cria&ccedil;&atilde;o de um novo
  cron mais interactiva , apagar crons , gravar o cron na localiza&ccedil;&atilde;o
  correcta consoante o utilizador que est&aacute; a executar o script.\r\n\r\n"
wordpress_id: 159
wordpress_url: http://rubemlrm.com/?p=159
date: '2012-01-24 23:03:15 +0000'
date_gmt: '2012-01-24 23:03:15 +0000'
categories: []
tags: []
comments: []
---
<p>Bem pessoal aqui fica um pequeno script para vos ajudar a a automatizar as vossas tarefas quando tiverem que mexer em crontabs.Este script surgiu numa aula de Sistemas Operativos em que tínhamos um exercício em que tínhamos que adicionar novos crons com o script. Mas para não limitar o script acrescentei mais umas funções.Tais como tornar a criação de um novo cron mais interactiva , apagar crons , gravar o cron na localização correcta consoante o utilizador que está a executar o script.</p>
<p><a id="more"></a><a id="more-159"></a></p>
<p>[perl]<br />
#!/usr/bin/perl<br />
#Developed by : Rubem Mota<br />
#Dont use to earn money and keep all copyrights reserved to me<br />
#Twitter: @rubemlrm<br />
package SysAdmin;<br />
use warnings;<br />
use strict;<br />
use autodie;</p>
<p>#declaração de variáveis<br />
my $min ;<br />
my $horas ;<br />
my $dia;<br />
my $mes;<br />
my $diasemana;<br />
my $uid = `id -u`;<br />
my $opt;<br />
my $comando;<br />
my $user;<br />
my $val;</p>
<p>#funções a ser chamadas<br />
&Main();</p>
<p>#funções</p>
<p>sub Main(){<br />
print "Bem vindo a área de gestõa crontabn";<br />
print "Se deseja eliminar um cron pressione tecla Dn";<br />
print "se deseja adicionar um cron pressiona a tecla An";<br />
chomp($opt = );<br />
if ( $opt eq "D"){<br />
&Eliminar();<br />
}elsif($opt eq "A"){<br />
&Adicionar();<br />
}else{<br />
print "Opção inválida";<br />
}</p>
<p>}</p>
<p>sub Eliminar{<br />
if ($uid != 0){<br />
&User();<br />
system("nano /var/spool/cron/crontabs/$user");<br />
system("sleep 2");<br />
print "Processo Concluido.A retornar para o menu inicialn";<br />
system ("sleep 2");<br />
&Main();<br />
}else{<br />
system("nano /etc/crontab");<br />
system("sleep 2");<br />
print "Processo Concluido.A retornar para o menu inicialn";<br />
system ("sleep 2");<br />
&Main();<br />
}<br />
}</p>
<p>sub Adicionar{<br />
&Minutos();<br />
&Horas();<br />
&Dia();<br />
&Mes();<br />
&DiaSemana();<br />
&Comando();<br />
&Final();<br />
}</p>
<p>sub Minutos{<br />
print "Introduza os parametros de agendamenton";<br />
print "Introduza os minutosn";<br />
print ("Se desejar que o script seja executado em todos os minutos - pressione an");<br />
print ("Se desejar especificar o minuto - pressione c n");<br />
chomp($opt = );<br />
if ($opt eq "a"){<br />
$min = "*";<br />
}elsif($opt eq "c"){<br />
&Validar();<br />
$min=$val;<br />
}else{<br />
print "opção inválidan";<br />
system("clear");<br />
&Minutos();<br />
}<br />
}</p>
<p>sub Horas{<br />
print "Introduza as horasn";<br />
print ("Se desejar que o script seja executado em todos as horas - pressione an");<br />
print("Se desejar especificar as horas - pressione c n") ;<br />
chomp($opt = );<br />
if ($opt eq "a"){<br />
$horas = "*";<br />
}elsif($opt eq "c"){<br />
&Validar();<br />
$horas = $val;<br />
}else{<br />
system("clear");<br />
print "opção inválidan";<br />
&Horas;<br />
}<br />
}</p>
<p>sub Dia{<br />
print "Introduza os dian";<br />
print ("Se desejar que o script seja executado em todos os dias - pressione an");<br />
print ("Se desejar especificar o dia - pressione c n") ;<br />
chomp($opt = );<br />
if ($opt eq "a"){<br />
$dia = "*";<br />
}elsif($opt eq "c"){<br />
&Validar();<br />
$dia = $val;<br />
}else{<br />
print "opção inválidan";<br />
system("clear");<br />
&Dia();<br />
}</p>
<p>}</p>
<p>sub Mes{<br />
print "mesn";<br />
print ("Se desejar que o script seja executado todos os meses - pressione an");<br />
print (" Se desejar especificar o mes - pressione c n") ;<br />
chomp($opt = );<br />
if ($opt eq "a"){<br />
$mes = "*";<br />
}elsif($opt eq "c"){<br />
&Validar();<br />
$mes= $val;<br />
}else{<br />
print "opção inválidan";<br />
system("clear");<br />
&Mes();<br />
}<br />
}</p>
<p>sub DiaSemana{<br />
print "Dia da Semann";<br />
print("Se desejar que o script seja executado todos os diass - pressione an");<br />
print("Se desejar especificar o dia - pressione c n") ;<br />
chomp($opt = );<br />
if ($opt eq "a"){<br />
$diasemana="*";<br />
}elsif($opt eq "c"){<br />
&Validar();<br />
$diasemana = $val;<br />
}else{<br />
print "opção inválidan";<br />
system("clear");<br />
&DiaSemana();</p>
<p>}<br />
}</p>
<p>sub Comando(){<br />
print ("Introduza o comando ou script a executarn");</p>
<p>chomp(my $script = );<br />
$comando = $script;<br />
}</p>
<p>sub User(){<br />
chomp($user = `whoami`);<br />
}</p>
<p>sub ChUser(){<br />
print "Escolha o utilizador que vai executar o script/comandon";<br />
chomp($user = );<br />
}</p>
<p>#funcoes de validação<br />
sub Validar(){<br />
print "Introduza o valorn";<br />
chomp($val = );<br />
if ($val =~ /d,?/?-?/){<br />
print "Valor guardadon";<br />
system("clear");<br />
}else{<br />
&ErrorVal();<br />
}<br />
}</p>
<p>sub ErrorVal(){<br />
print "Valor inválidon";<br />
print "Deseja sair ? se sim pressione Sn";<br />
print "Senão, se quiser voltar a repetir este passo pressione R";<br />
chomp($opt= );<br />
if($opt eq "S"){<br />
exit;<br />
}elsif($opt eq "R"){<br />
system("clear");<br />
&Validar();</p>
<p>}else{<br />
print "Opção erradan";<br />
&ErrorVal();<br />
}<br />
}</p>
<p>#função relativa a verificaçao do user id e sua respectiva config-</p>
<p>sub Final(){<br />
if ($uid != 0){<br />
&User();<br />
open(FILE, ">>/var/spool/cron/crontabs/$user");<br />
print FILE "$min $horas $mes $dia $diasemana $comandon";<br />
close(FILE);<br />
}else{<br />
&ChUser();<br />
open(FILE, ">>/etc/crontab");<br />
print FILE "$min $horas $mes $dia $diasemana $user $comandon";<br />
close(FILE);<br />
}<br />
}<br />
[/perl]<br />
<strong>Update: Adicionados novos verificadores de erros</strong><br />
<strong>Update: Adicionadas novas funções , corrigidos pequenos bugs.</strong></p>
