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
            '   2  &   Z     �     �  $   �     �  .   �  �     *   �  ^   �  8   W     �    �  .   �  �   �  	   n     x     ~     �     �     �     �     �     �     �     �       	         *     0     I  	   N     X     ]     l  �  �     7  *   G  0   r  "   �     �  +   �     �       G    "   e  -   �  .   �     �  &   �        *   ?     j     �  -   �  X   �  )     P   ?     �     �     �  #   �  "   �          &     @     W  "   l  	   �     �  +   �  +   �            *   5  "   `  .   �  �   �  ,   W  j   �  >   �     .  #  H  .   l  �   �     E  	   S     ]     c     j     {      �     �     �     �  !   �      �        	   '     1     L  
   j     u     z  !   �     D          (      )                 '   <                    
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
PO-Revision-Date: 2010-11-06 11:26+0000
Last-Translator: Daniel Richter <danielrichter2007@web.de>
Language-Team: Italian <it@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2010-11-28 20:24+0000
X-Generator: Launchpad (build Unknown)
  (personalizza)  comando non trovato,impossibile procedere  impossibile eseguire. Devi eseguirlo come root!  non trovato. GRUB2 è installato? (nuove Voci) Aggiungi uno script alla tua configurazione Aggiungi script BURG trovato! Prima di modificare la tua configurazione del grub occorre
montare la partizione richiesta.

Questo assistente ti aiuterà a farlo.


Assicurati che il sistema sia basato sulla stessa architettura cpu
come quello attualmente in esecuzione.
Altrimenti otterrai un messaggio di errore durante il caricamento della configurazione. La configurazione è stata salvata Impossibile montare la partizione selezionata Impossibile smontare la partizione selezionata Titolo di default:  Vuoi configurare BURG invece di grub2? Vuoi salvare le tue modifiche? Vuoi selezionare un'altra partizione root? Modifica le preferenze di GRUB Voce Errore durante l'installazione del bootloader Grub Customizer è una interfaccia grafica per configurare le impostazioni di GRUB2/BURG Grub Customizer: Selezionatore partizione Installa il bootloader nell'MBR e metti dei
file nella directory del bootloader. Installa nel MBR Mount fallito! Monta Filesystem selezionato Sposta in basso la voce selezionata Sposta in alto la voce selezionata Inserisci la Voce Nessun Bootloader trovato Nessuno script trovato Scegli la partizione Inserisci il nome del dispositivo! Anteprima Proxy binario non trovato! Rimuovi uno script dalla tua configurazione Salva la configurazione e creane una nuova  Script da inserire Seleziona _partizione Seleziona e monta la tua partizione radice Seleziona submountpoints richiesti Il bootloader è stato installato con successo La nuova configurazione non corrisponde a quella salvata all'avvio. Ciò che vedi ora potrebbe non risultare all'avvio del pc. Per evitare questo clicca su Aggiorna La configurazione salvata non è aggiornata! Questi sono i punti di mount del tuo file fstab.
Prego selezionare ogni partizione collegata al grub/boot. Non sembra essere un file system radice (nessun fstab trovato) Smonta Filesystem montato Hai selezionato l'opzione per scegliere un'altra partizione.
Nota bene: osprober potrebbe non trovare il tuo attuale sistema in esecuzione.
Quindi avvia nuovamente Grub Customizer sul sistema
 e salva la configurazione (oppure esegui update-grub/update-burg)
per ottenere nuovamente la voce! Hai avviato Grub Customizer usando il live CD. Vedrai tutte le voci (non personalizzate) quando avvierai GRUB. Questo errore capita (nella maggior parte dei casi) se non hai installato correttamente grub customizer . _Dispositivo  _Modifica _File _Aiuto _Installa su MBR _Esci senza salvare _Abbandona senza alcuna modifica _Salva ed esci _Aggiorna ed esci _Visualizza _utilizza una partizione diversa  sto Installando il bootloader... attiva etichetta caricamento configurazione clicca per modificare la voce partizione tipo umount fallito! sto aggiornando la configurazione 