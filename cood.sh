#!/bin/bash
clear


# Menu de Configuração  do .sh 
Menu(){
   echo "------------------------------------------"
   echo "   Menu - Linux sh      "
   echo "------------------------------------------"
   echo
   echo "[ 1 ] Adicionar Usuario"
   echo "[ 2 ] Atualizar a lista de pacotes"
   echo "[ 3 ] Backup"
   echo "[ 4 ] Instalar programa"
   echo "[ 6 ] Criado"
   echo "[ 7 ] Detalhes "
   echo "[off] Desligar PC  "
   echo "[ t ] Terminal"
   echo "[ v ] Versão de Distribuição"
   echo "[ d ] Atualizar Distribuição"
   echo "[ l ] Limpar Tela"
   echo "[ b ] Limpar o /boot"
   echo "[ s ] Sair"
   echo
   echo -n "Qual a opcao desejada ? :"
   read opcao
   case  $opcao in
      1) Adicionar ;;
      2) Atualizar ;; 
      3) Backup ;;
      4) Instalar ;;
      6) Criado ;;
      7) Detail ;;
    off) DesligarPc ;;
      t) Terminal ;;
      d) Upgrade ;; 
      s) exit ;;
      b) BootClen ;;
      v) Version ;;
      l) Limpar ;;    

      *) "Opcao desconhecida." ; echo ; Menu ;;
   esac
}
#Fim menu 





Adicionar() {


echo "Digite o nome do usuário :"
read uusuario
echo "Digite a Senha : "
read usenha
usermod -p $(openssl passwd -1 "$usenha") $uusuario
#sudo adduser $usuario
#echo "Informe a senha para o novo usuário"
#passwd $usuario
echo "Usuário adicionado !."
Menu
}

Atualizar() {

echo "Atualizando a lista de pacotes"
sudo apt-get update && sudo apt-get upgrade -y
Menu
}
DesligarPc(){
  sudo shutdown -h now
}

Limpar() {
  clear

  Menu
}
Terminal(){
  echo "Digite o comando que deseja executar"
  read codaex
  echo
  $codaex
  echo
  echo "Comando executado com sucesso ! :^) "
  echo
  echo
  Menu
}

Version(){
  echo
  clear
  echo "Versão da distribuição instalada ! ...      :^) "
  echo
  echo "-----------------------------------------------------------------------"
  uname -a
  echo "-------------------s----------------------------------------------------"
  echo
  Menu
}

Backup() {
echo "Especifique o local a ser backupeado"
read local


echo "+++++++++++++++++++++++++++++++++++++++"
echo

echo "Especifique nome do backup =)"
read nome

echo

echo
echo "+++++++++++++++++++++++++++++++++++++++"

echo "Especifique o destino do backup =)"
read destino

sudo tar cvf $destino/$nome.tar $local
cd $destino
ls $nome
Menu
}


Instalar() {
   echo "Digite a opção que deseja instalar !"
echo
   echo " 1 - Opera"
   echo " 2 - Samba"
   echo " 3 - SSH"
   echo " 4 - SSH Cliente "
   echo " 5 - Pacotes Adobe "
   echo " 6 - Steam"
   echo " 7 - Pacote Java "
   echo " 8 - Codecs e Multimedia "
   echo " 9 - Libre Office "
   echo "10 - Comodo Antivirus"
   echo "11 - Gparted"
   echo "12 - pulseaudio-equalizer"
   echo "13 - Sticky Notes"
   echo " X - Sair"
echo "(V) VOLTAR"                             echo "(M) MENU"
echo
echo -n "Opção:"
read selecao 
case $selecao in
      1) OPera ;;
      2) Samba ;;
      3) SSH ;;
      4) SSH Cliente ;;
      5) Adobe ;;
      6) steam ;;
      7) Java ;;
      8) CodM ;;
      9) LBoffice ;;
     10) ComVirus ;;
     11) GpartedSO ;; 
     12) PulseAudio ;;
     13) StickyNotes ;;   
      
      x) exit ;;
      v) Voltar1 ;;
      m) Menu1 ;;
      *) "Opcao desconhecida." ; echo ; Instalar ;;
esac
}
###############################################################################################
LBoffice(){
            echo "Instalando libre office" 

            sudo add-apt-repository ppa:libreoffice/libreoffice-4-3

            sudo apt-get update &&  sudo apt-get upgrade -y &&

            echo "Instalando"

            sudo apt-get install libreoffice-common -y 
Instalar
}
###############################################################################################
OPera(){
            echo "Instalando Opera Navegador "
echo 
            echo "Bibliografia:http://www.edivaldobrito.com.br/instalar-opera-no-linux/"
            echo "*Baixando o Navegador Opera"
echo
            sudo apt-get install opera && clear
            echo "Pressione qualquer tecla para continuar ..."
Instalar
}
###############################################################################################
Samba(){
            echo "Intalando Samba " 
echo
            sudo apt-get install samba && clear
            echo "Criando uma pasta servidor"

            echo "Após instalar o Samba na home Crie uma pasta com nome "Share"
                  Depois com o botão direito adicione as propriedades de compartilhamento." 
echo
            echo "Pressione qualquer tecla para continuar ..."
Instalar
}
###############################################################################################
SSH(){
            echo "Instalando SSH Server "
echo
            sudo apt-get install aptitude && sudo apt-get install openssh-server && clear
            echo "Pressione qualquer tecla para continuar ..."
echo "
*Configurando o SSH sudo nano /etc/ssh/ssh_config
#   ForwardAgent yes
#   ForwardX11 yes
#   ForwardX11Trusted yes
*Depois Ctrl+X digite Y/S e Enter

*Configurando SSHD sudo nano /etc/ssh/sshd_config
#   X11Forwarding yes
*Depois Ctrl+X digite Y/S e Enter"
Instalar
}

###############################################################################################
SSH(){
            echo "Instalando SSH Server "
echo
            sudo apt-get install openssh-client && clear
            echo "Finalizando  ..."
}
################################################################################################
################################################################################################
Adobe(){
                                         

                        sudo add-apt-repository "deb http://archive.canonical.com/ raring partner" && sudo apt-get update && clear
                                         echo 
                                         echo " Digite a opção desejada ! "
                                                   echo " 1) acroread libgtk2.0-0:i386 "
                                                   echo " 2) libnss3-1d:i386 "
                                                   echo " 3) libnspr4-0d:i386 "
                                                   echo " 4) libxml2:i386 "
                                                   echo " 5) libxslt1.1:i386 "
                                                   echo " 6) libstdc++6:i386" 
                                                   echo " 7) Adobe Air"
                                                   echo " 8) Adobe Flash Player"
                                                   echo " t) Instalar  Tudo "
                                                   echo " v) Voltar"
                                         echo -n "Pacote :"
                                         read pacote 
                                         case $pacote in 
                                                    1) acroread ;;
                                                    2) libnss ;;
                                                    3) libnspr ;;
                                                    4) libxml ;;
                                                    5) libxslt ;;
                                                    6) libstdc ;;
                                                    7) Air ;;
                                                    8) Flash ;;
                                                    t) tudo ;;
                                                    v) voltarA ;;
                                                    *) "Opcao desconhecida." ; echo ; Instalar ;;
                                         esac
}

acroread(){
sudo apt-get install acroread libgtk2.0-0:i386 
Adobe
}

libnss(){
sudo apt-get install libnss3-1d:i386
Adobe
}

libnspr(){
sudo apt-get install libnspr4-0d:i386
Adobe
}

libxml(){
sudo apt-get install libxml2:i386 
Adobe
}

libxslt(){
sudo apt-get install libxslt1.1:i386 
Adobe
}

libstdc(){
sudo apt-get install libstdc++6:i386 
Adobe
}

Air(){
echo "Adobe air 
bibliografia: http://www.edivaldobrito.com.br/como-instalar-o-adobe-air-no-linux/"
wget http://drive.noobslab.com/data/apps/AdobeAir/adobe-air.sh -O adobe-air.sh
chmod +x adobe-air.sh
sudo ./adobe-air.sh
echo " *Desinstalando sudo apt-get autoremove adobeair"
Adobe
}

Flash(){
echo "Instalando Adobe Flash Player"
sudo apt-get update
sudo apt-get install flashplugin-installer
sudo apt-get install adobe-flashplugin
Adobe
}

tudo(){
acroread && libnss && libxml && libxslt && libstdc && Air Flash && Adobe
}
voltarA(){
Instalar
}

###############################################################################################
steam(){
echo "Instalando a Steam"
sudo apt-get install steam
echo "Depois execute o steam para atualizar"
Instalar
}
###############################################################################################
Java(){
echo "Instalando Java ..."
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update 
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default

Update & Upgrade
sudo aptitude update
sudo aptitude dist-upgrade
Instalar
}
##############################################################################################
CodM(){
echo "bibliografia: http://www.diolinux.com.br/2016/04/7-coisas-para-fazer-depois-de-instalar-o-ubuntu-1604-lts.html"
sudo apt-get install ubuntu-restricted-extras
Instalar
}
###############################################################################################
Voltar1(){
echo "------------------------------------------"
           echo "-----Voltar-----" 
clear
echo "------------------------------------------"
Instalar
}
################################################################################################
ComVirus(){
  clear
  echo
  echo "Instalando o Antivirus Comodo -> ...    :^) "
  echo "-----------------------------------------"
  echo
  sudo apt-get install cav-linux
  echo
  echo "Antivirus Instalado com sucesso :>)        "
  echo
  Instalar
}
################################################################################################
GpartedSO(){
  clear
  echo
  echo "Insrtalando Gparted -> ...     :^)        "
  echo
  sudo apt-get install gparted
  echo 
  echo "Gparted Instalado com sucesso !    :>)"
  echo
  Instalar
}
################################################################################################
PulseAudio(){
  clear
  echo  
  echo "Intalando Pulse Audio -> ...  :^)    "
  echo
  sudo add-apt-repository ppa:nilarimogard/webupd8
  echo
  echo "Update no Sistema "
  sudo apt-get update
  echo
  sudo apt-get install pulseaudio-equalizer
  Instalar

}
################################################################################################
StickyNotes(){
  clear
  echo
  echo "Intalando Sticky Notes -> ...   :^)      "
  echo
  sudo add-apt-repository ppa:umang/indicator-stickynotes -y && sudo apt-get update && sudo apt-get install indicator-stickynotes -y
  echo
  echo "Instalado com Sucesso."
  Instalar

}
################################################################################################
Menu1(){
echo "------------------------------------------"
           echo "-----Menu-----"
clear
echo "------------------------------------------"
Menu
}
################################################################################################
Criado(){
echo
echo "Olá SR.Renan G. da Silva Boas  "
echo
echo "Oque o Sr. Deseja ?:"
echo
Menu

 } 
################################################################################################
Detail(){
echo "Criado por Renan G. da Silva "
echo
echo "Data de Criação 09-09-2016"
echo
echo "* Bibliografia base *
https://www.vivaolinux.com.br/artigo/Programacao-com-Shell-Script"
echo
echo "Crie este script com objetivo de auxiliar usuários da distribuição do Linux Ubuntu, na configuração e instalação incial de alguns
      drivers e aplicativos. Inicialmente este script foi testado no Elemtary OS 0.3.2 Freya 
      mas eu acredito que funcionará também nas distribuições linux Ubuntu.  E com muito alegria que apresento este projeto para 
      auxiliar e ajudar quem quiser desenvolver em shell script. "
      echo
echo "* Sobre a licenças de uso *
      Declaro que este documento e livre  entre as partes de programação
      feitas por min e o uso do seu código. Não me resposabilizo por licenças do shell ou etc. apenas este codigo fonte e livre 
      não podendo ser vendido !. E se publicado favor adicionar  Renan G. da Silva nos créditos "
Menu


}
################################################################################################
Upgrade(){
echo
echo "Atualizando o Sistema ->"  
sudo apt-get dist-upgrade  && clear 
echo
Menu
}
################################################################################################
BootClen(){
echo
echo "Aplicando a limpeza de cache do /boot ..."
sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")  
echo 
echo "/boot Limpo ! "
echo 
clear
echo
Menu

}
################################################################################################
Menu

