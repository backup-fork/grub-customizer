��    F      L  a   |         	     "     >   .     m     �  "   �  
   �     �  1  �       %   $  &   J     q  /   �  '   �  -   �     	     	  %   #	  M   I	  "   �	  q   �	     ,
     ;
     I
  &   c
  $   �
     �
     �
     �
     �
     �
            '   2  &   Z     �     �  $   �     �  .   �  �     *   �  ^   �  8   W     �    �  .   �  �   �  	   n     x     ~     �     �     �     �     �     �     �     �       	         *     0     I  	   N     X     ]     l  �  �     G  3   X  H   �  *   �        -        =     N  G  _     �  +   �  .   �       .   /  &   ^  .   �     �     �     �  W   �  &   O  r   v     �     �  &   
  0   1  ,   b     �     �     �     �  '   �       "   &  '   I  &   q     �     �  '   �  2   �  &   "  �   I  -     p   E  G   �  $   �  0  #  1   T  �   �     :     I     Q     Z     a     u     �     �     �     �     �     �     �               (  
   -     8     =     Q     D          (      )                 '   <                    
       8   ?                         &                	      ;   +      ,                     *   /   3   =      $      %      E   :          5   6   "       9   .      >   0                             F   #   1      !          4          C       @                  A   -   2       B      7     (custom)  command not found, cannot proceed  couldn't be executed successfully. You must run this as root!  not found. Is grub2 installed? (new Entries) Add a script to your configuration Add script BURG found! Before you can edit your grub configuration we have to
mount the required partitions.

This assistant will help you doing this.


Please ensure the target system is based on the same cpu architecture
as the actually running one.
If not, you will get an error message when trying to load the configuration. Configuration has been saved Couldn't mount the selected partition Couldn't umount the selected partition Default title:  Do you want to configure BURG instead of grub2? Do you want to save your modifications? Do you want to select another root partition? Edit grub preferences Entry Error while installing the bootloader Grub Customizer is a graphical interface to configure the grub2/burg settings Grub Customizer: Partition chooser Install the bootloader to MBR and put some
files to the bootloaders data directory
(if they don't already exist). Install to MBR Mount failed! Mount selected Filesystem Move down the selected entry or script Move up the selected entry or script Name the Entry No Bootloader found No script found Partition Chooser Please type a device string! Preview: Proxy binary not found! Remove a script from your configuration Save configuration and generate a new  Script to insert: Select _partition … Select and mount your root partition Select required submountpoints The bootloader has been installed successfully The generated configuration didn't equal to the saved configuration on startup. So what you see now may not be what you see when you restart your pc. To fix this, click update! The saved configuration is not up to date! These are the mountpoints of your fstab file.
Please select every grub/boot related partition. This seems not to be a root file system (no fstab found) Unmount mounted Filesystem You selected the option for choosing another partition.
Please note: The os-prober may not find your actually running system.
So run Grub Customizer on the target system
again and save the configuration (or run update-grub/update-burg)
to get the entry back! You started Grub Customizer using the live CD. You will see all entries (uncustomized) when you run grub. This error accurs (in most cases), when you didn't install grub gustomizer currectly. _Device:  _Edit _File _Help _Install to MBR … _Quit without saving _Quit without update _Save & Quit _Update & Quit _View _use another partition:  installing the bootloader… is active label loading configuration… name partition type umount failed! updating configuration Project-Id-Version: grub-customizer
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2010-11-21 12:13+0100
PO-Revision-Date: 2010-11-06 11:27+0000
Last-Translator: Daniel Richter <danielrichter2007@web.de>
Language-Team: Brazilian Portuguese <pt_BR@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2010-11-28 20:24+0000
X-Generator: Launchpad (build Unknown)
  (personalizado)  comando não encontrado, impossível de prosseguir  não pode ser executado com êxito. Você deve executar isto como root!  não encontrado. O grub2 está instalado? (Entrada nova) Adicionar um script para a sua configuração Adicionar script BURG encontrado! Antes de editar a configuração do grub temos que
montar as partições necessárias.

Este assistente irá ajudá-lo a fazer isso.

Por favor, verifique se o sistema alvo é baseado na arquitetura da CPU mesmo
como o atualmente em execução.
Se não, você receberá uma mensagem de erro ao tentar carregar a configuração. A configuração foi salva Impossível montar a partição selecionada Impossível desmontar a partição selecionada Título padrão:  Você deseja configurar BURG, em vez de grub2? Você quer salvar suas modificações? Você deseja selecionar outra partição raiz? Editar preferências do grub Entrada Erro ao instalar o bootloader Grub Customizer é uma interface gráfica para alterar as configurações do grub2/burg Grub Customizer: Seletor de partição Instalar o bootloader na MBR e colocar alguns
arquivos no diretório de dados do bootloader
(se já não existir). Instalar na MBR Falha ao montar! Montar sistema de arquivos selecionado Mover para baixo a entrada selecionada ou script Mover para cia a entra selecionada ou script Nome da Entrada Bootloader não encontrado Nenhum script encontrado Seletor de Partição Por favor digite o nome do dispositivo! Pré-visualização: Binário do proxy não encontrado! Remover um script da sua configuração Salve a configuração e gere um novo  Script para inserir: Selecionar_partição ... Selecionar e montar sua partição raiz Selecionar os sub pontos de montagem necessários. O bootloader foi instalado com sucesso A configuração gerada não é igual a configuração salva na inicialização. Então o que você ver agora pode não ser o que você verá quando reiniciar o pc. Para corrigir isso, clique em atualizar! A configuração salva não está atualizada! Existem pontos de montagem em seu arquivo fstab.
Por favor selecione todas partições do grub/boot relacionada. Esse não parece ser o sistema de arquivos raiz (fstab não encontrado) Demontar sistema de arquivos montado Você selecionou a opção para escolher outra partição.
Por favor note: O os-prober não pode encontrar o seu sistema atualmente em execução.
Então execute o Grub Customizer no sistema de destino
novamente e salve a configuração (ou execute update-grub/update-burg)
para obter a entrada de volta! Você iniciou o Grub Customizer usando o live CD. Você verá todas as entradas (não personalizada) quando você executar o grub. Este erro ocorre (na maioria das vezes), quando você não instala o grub customizer corretamente. _Dispositivo:  _Editar _Arquivo _Ajuda _Instalar na MBR... _Sair sem salvar _Sair sem atualizar Sa_lvar & Sair _Atualizar & Sair _Exibir _usar outra partição:  instalando o bootloader... está ativo rótulo carregando configuração... nome partição tipo falha ao desmontar! atualizando configuração 