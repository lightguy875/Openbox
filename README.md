# Objetivo

Apresentar arquivos de configuração do openbox já com algumas alterações pessoais para o gerenciador de janelas ou WM.

## Arquivo rc.xml
Esse arquivo contém toda a configuração de atalhos do openbox, como funcionalidades do touchpad,clique de mouse, atalhos do teclado para programas e iteração com o ambiente de trabalho. Sem esse arquivo não é possível haver interação do usuário com o openbox.
É necessário instalar os seguintes programas para que rc.xml funcione corretamente light, pamixer, xrandr, ranr, rofi.

## Como instalar

Para instalar basta copiar os arquivos na pasta de configuração do sistema linux que geralmente está localizado na pasta de usuário de acordo com o seguinte comando:

```
# mv rc.xml ~/.config/openbox/rc.xml
```
É indicado criar um arquivo de backup da configuração atual e caso queira apenas copiar o arquivo de configuração faça:
```
# cp rc.xml ~/.config/openbox/rc.xml
```
O arquivo rc.xml edita as configurações gerais das funcionalidades do openbox e é um dos arquivos mais relevantes para o openbox.

## Arquivo autostart

O arquivo autostart é de configuração pessoal não será indicado para todos os sitemas com openbox, apenas em alguns. No meu caso, faço uso do cairo-dock, compton , mate-screenshot , redshift , network manager applet(nm-applet), polkit-gnome-authentication-agent-1 e volumeicon. Portanto, é necessário ter esses programas para que a aplicação funcione.

## Instalação do autostart

Para instalar o autostart, é necessário apenas utilizar os mesmos comandos de instalação usados para o arquivo rc.xml: 
```
# mv autostart ~/.config/openbox/autostart
```
Ou
```
# cp autostart ~/.config/openbox/autostart
```
O primeiro caso mover o arquivo para o ambiente de instalação e o segundo caso queira colocar uma cópia para o ambiente.

