��    v      �  �   |      �	  	   �	  8   �	  !   4
     V
     j
     x
  E   �
     �
  "   �
  
   �
  	          1       N  %   k  &   �     �  /   �  '   �  -         N     d     j  %   �  M   �  "   �  q        �     �     �  &   �  $   �               0     @     R     o     x  '   �  &   �     �     �     �  $        4  .   S  �   �  *   3  ^   ^  �   �  8   Q     �  G   �     �    �  .   �  �   '  	   �  	   �     �     �     �     �     �     �          %     2     A     G  
   `     k     |     �     �     �     �     �  	   �     �  
   �     �     �  
           	   (     2     D  
   J  
   U  
   `     k     w  	   �     �      �     �     �     �     �  	   �     �                    4     F  	   O     Y     e     j     y     �  
   �     �     �  �  �     L  9   \  '   �     �     �     �  N   �     I  #   R     v     �     �    �     �  '   �  *   �       -   *  !   X  "   z     �     �     �  $   �  I   �  )   C  n   m     �     �     �  -     -   I     w     �     �     �  '   �     �     �  (     %   C     i     {     �  "   �  /   �     �  �      ,   �   \   �   ~   M!  ;   �!     "  R   "  !   k"  �   �"  &   �#  �   �#     J$  
   S$     ^$     g$     p$     y$     $     �$     �$     �$     �$     �$     �$     �$     %     %     %      %     )%     H%     [%     `%     l%     �%     �%     �%  	   �%     �%  	   �%     �%     �%  
   �%  
   �%  
   	&     &      &     .&     <&     W&     s&     {&     �&     �&  
   �&     �&     �&     �&     �&     �&     �&      '     '     '     '     3'     D'     J'     V'     ]'     #   R   Q      i       E   
   $          W          v          "   *   F      I   +   p       B      T       >   3   =   N       d   ;   L      &   @   O          ]       :          /      n       M      5   6       A   a       K       (          [   0          '   7   H   X   8       !          Y   l   Z       j   D           \   S   J   V           4      b   f   2   r          ?                   s   q      k   	   g   P      e   `   c       %           9                U      <   h      1          .      ,   u   t   -                         G       o   m   C      ^       )       _     (custom) %1 couldn't be executed successfully. error message:
 %2 %1 not found. Is grub2 installed? (new Entries of %1) (new Entries) (script code) AND: your modifications are still unsaved, update will save them too! A_ppearance Add a script to your configuration Add script BURG Mode BURG found! Before you can edit your grub configuration we have to
mount the required partitions.

This assistant will help you doing this.


Please ensure the target system is based on the same cpu architecture
as the actually running one.
If not, you will get an error message when trying to load the configuration. Configuration has been saved Couldn't mount the selected partition Couldn't umount the selected partition Default title:  Do you want to configure BURG instead of grub2? Do you want to save your modifications? Do you want to select another root partition? Edit grub preferences Entry Entry %1 (by position) Error while installing the bootloader Grub Customizer is a graphical interface to configure the grub2/burg settings Grub Customizer: Partition chooser Install the bootloader to MBR and put some
files to the bootloaders data directory
(if they don't already exist). Install to MBR Mount failed! Mount selected Filesystem Move down the selected entry or script Move up the selected entry or script Name the Entry No Bootloader found No script found Partition Chooser Please type a device string! Preview: Proxy binary not found! Remove a script from your configuration Save configuration and generate a new  Script to insert: Seconds Select _partition … Select and mount your root partition Select required submountpoints The bootloader has been installed successfully The generated configuration didn't equal to the saved configuration on startup. So what you see now may not be what you see when you restart your pc. To fix this, click update! The saved configuration is not up to date! These are the mountpoints of your fstab file.
Please select every grub/boot related partition. This option doesn't work when the "os-prober" script finds other operating systems. Disable "%1" if you don't need to boot other operating systems. This seems not to be a root file system (no fstab found) Timeout To get the colors above working,
you have to select a background image! Unmount mounted Filesystem You selected the option for choosing another partition.
Please note: The os-prober may not find your actually running system.
So run Grub Customizer on the target system
again and save the configuration (or run update-grub/update-burg)
to get the entry back! You started Grub Customizer using the live CD. You will see all entries (uncustomized) when you run grub. This error accurs (in most cases), when you didn't install grub gustomizer currectly. _Advanced _Device:  _Edit _File _General _Help _Install to MBR … _Quit without saving _Quit without update _Save & Quit _Update & Quit _View _use another partition:  background background image black blue brown cannot move this entry custom resolution:  cyan dark-gray default entry font color generate recovery entries green highlight: installing the bootloader… is active kernel parameters label light-blue light-cyan light-gray light-green light-magenta light-red loading configuration… look for other operating systems magenta menu colors name normal: partition pre_defined:  previously _booted entry red reload configuration remove background settings show menu transparent type umount failed! updating configuration value visibility white yellow Project-Id-Version: grub-customizer
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2011-11-22 19:34+0100
PO-Revision-Date: 2011-12-05 23:33+0000
Last-Translator: ASTUR2000 <Unknown>
Language-Team: Asturian <ast@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2011-12-28 17:08+0000
X-Generator: Launchpad (build 14560)
  (personalizao) %1 nun pue ser executáu ensin torges. mensax d'erru:
 %2 Nun salcuentra %1. ¿Ta grub2 allugáu? (nueves Entraes de %1) (nueves Entraes) (códigu de script) YA: Les tos camudancies nun tan atoldaes enaina, ¡anovar atroxaralos tamién! _Aspeutu Añader un script a los tos axustes Añader script Mou BURG ¡BURG atopáu! Enantes camudar axustes de Grub tenemos que
montar le particiones precises.

Esti asistente aidarate faciendo esto.


Afítate de la arquitectura del sistema destín
na qu'anguaño furrula.
Si non, consiguirás un mensax d'erru entrín pruebes cargar los axustes. Los axustes foron atroxaos Nun pue montase la partición esbillada Nun pue desmontase la partición esbillada Títulu per defeutu:  ¿Quiés configurar BURG en cuentes de grub2? ¿Quiés atroxar los tos cambeos? ¿Quiés esbillar otra partición? Editar axustes Grub Entrada Entrada %1 (per posición) Erru entrín s'allugaba'l bootloader Grub Customizer ye una interfaz gráfica pa remanar axustes de Grub2/burg Grub Customizer: Esbillador de partición Allugar el bootloader a MBR ya poner dalgunos
archivos a los cartafueyos los bootloaders
(si nun esisten yá). Allugar a MBR ¡Montax fallicu! Montar el Filesystem esbilláu Baxar pa embaxo la entrada o script esbillaos Xubir pa enriba la entrada o script esbillaos Nome d'Entrada Bootloader nun atopáu Script nun atopáu Esbillador partición ¡Por favor escribi una cadena preseos! Previsualizar: ¡Proxy binariu nun atopáu! Esniciar un script dende los tos axustes Atroxar axustes ya xenerar unu nuevu  Script a enxertar Segundos Esbillar _partición ... Esbillar ya montar partición root Esbillar los puntos montax antemanaos requerios El bootloader foi allugáu Los axustes xeneraos nun tan iguaos a los atroxaos nel aniciu. Asina que lo que güeyes agora nun sedrá lo mesmo cuando reanicies el PC. Pa esclariar esti problema, ¡Primi n'anovar! ¡La configuración atroxada nun ta anovada! Estos son los puntos de montax del fstab.
Por favor esbilla caunes les partciones Grub/boot. Esta opción nun furrula cuando'l script "os-prober" atopa otros sistemes. Desanicia "%1" si necesites aniciar otros sistemes. Esto nun paez ser un sistema d'archivos (fstab nun atopáu) Tiempu llímite ¡Pa consiguir colores enriba que trabayen
tienes qu'esbillar una semeya de fondu! Desmontar el Filesystem esbilláu Esbillasti la opción pa esbillar otra partición.
Nota: El os-prober nun pue alcontrar anguaño'l sistema.
¡Asina qu'anicia Grub Customizer nel sistema destín
otra vegada ya atroxa los axustes (o anicia update-grub/update-burg)
pa consiguir la entrada! Entamasti Grub Customizer pel live CD. Güeyarás toles entraes (non customizaes) cuando anicies Grub. Esti erru sal (na meyoría casos), cuando nun allugasti Grub Customizer correutamente _Avanzao _Preséu:  _Remanar _Ficheru _Xeneral _Aida _Allugar a MBR... _Colar ensín atroxar _Colar ensín anovar _Atoldar a Colar _Anovar ya Colar _Güeyar _Usar otra partición  fondu semeya de fondu prietu azul castañu Nun pue ximelgase esta entrada otra resolución:  cian grai escuro entrada per defeutu color fonte xenerar entraes recuperaes verde señalar: allugando'l bootloader Ta activu Parametros kernel etiqueta azul claro cian claro grai claro verde claro maxenta claro bermeyu claro cargando configuración... restolar per otros sistemas maxenta colores menú viesu normal: partición pre_definío  Entrada aniciada _postreramente bermeyu recargar axustes esniciar fondu axustes amosar menú tresparente triba ¡Desmotax fallicu! Anovando axustes Valor visibilidá blancu mariellu 