��    s      �  �   L      �	  	   �	     �	     �	  E   �	     3
  "   ?
  
   b
  	   m
     w
  1  �
     �  %   �  &   �       /   /  '   _  -   �     �     �     �  %   �  M     "   \  q        �             &   (  $   O     t     �     �     �     �     �     �  '   �  &        F     X     `  $   v     �  .   �  �   �  *   �  ^   �  �   $  8   �     �  G   �     A    \  .   _  �   �  	     	   )     3     9     ?     H     N     b     w     �     �     �     �  
   �     �     �     �     �     �            	   $     .  
   <     G     a  
   g     r  	   �     �     �  
   �  
   �  
   �     �     �  	   �     �           0     8     D     I  	   Q     [     i     �     �     �     �  	   �     �     �     �     �     �  
   �            �       �  !   �     �  Q        ]  &   i     �     �     �  <  �     �  "     "   ;     ^  5   r  '   �  0   �          !  -   1  +   _  K   �  "   �  s   �     n     }  /   �  @   �  A        H     g     �     �  ,   �     �     �  "        /     O     f     o  -   �  7   �  ,   �  �      (   �   l   !  �   �!  F   &"  
   m"  U   x"  )   �"  ]  �"  3   V$  �   �$  
   )%     4%     J%  	   S%     ]%     f%     l%     |%     �%     �%     �%     �%      �%     &  
   &     &     %&     -&  *   4&     _&     u&     |&     �&     �&     �&     �&     �&      �&     '  !   '     3'     <'     L'     Z'     i'     y'     �'     �'  #   �'     �'     �'     �'  	   �'     �'     �'      (     -(     6(     P(  	   b(     l(     �(     �(     �(     �(     �(  	   �(  	   �(  	   �(         O   N      f       B      !          T   	       s             '   C      F   (   m       ?   g   Q       ;   0   :   K       a   8   I      #   =   L          Z       7          ,      k       J   
   2   3       >   ^       H       %          X   -          $   4   E   U   5                 V   i   W           A           Y   P   G   S           1      _   c   /   o          <                  p   n      h      d   M       b   ]           "           6                R      9   e   `   .          +      )   r   q   *                         D       l   j   @      [       &       \     (custom) (new Entries of %1) (new Entries) AND: your modifications are still unsaved, update will save them too! A_ppearance Add a script to your configuration Add script BURG Mode BURG found! Before you can edit your grub configuration we have to
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
PO-Revision-Date: 2011-12-28 09:12+0000
Last-Translator: Timo Seppola <Unknown>
Language-Team: Finnish <fin@ x x x x.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2011-12-28 17:08+0000
X-Generator: Launchpad (build 14560)
  (yksilöinti) (Uudet käynnistysvaihtoehdot %1) (Uudet käynnistysvaihtoehdot) JA: Muokkauksesi ovat vielä tallentamatta,nyt päivitys tallentaa nekin samalla! _Ulkonäkö Lisää käskyrivi (script) asetuksiin Lisää rivi (script): BURG tilassa BURG löytyi! Ennenkuin voit editoida grub asetuksia meidän täytyy liittää
tarvittavat osiot.

Tämä avustaja auttaa tekemään liitokset.


Ole hyvä ja varmista, että kohdejärjestelmä perustuu samaan CPU-arkkitehtuuriin
kuin mikä nyt on käytössä.
Jos näin ei ole, saat virheilmoituksen kun yrität ladata asetuksia. Asetukset on tallennettu Ei voitu liittää valittua osiota Ei voitu irroittaa valittua osiota Valittu otsikko :  Haluatko tehdä asetukset BURG:iin eikä grub2:een ? Haluatko tallentaa tekemäsi muutokset? Haluatko valita toisen juuri partition (root) ? Editoi grub:in esiominaisuuksia Käynnistysrivi Käynnistysvalinta %1 (sijainnin perusteella) Virhe kesken käynnistyslataimen asennusta. Grub Customizer on graafinen liityntä, jolla ohjataan grub2/burg asetuksia Grub Customizer: Osioiden valitsin Asenna boot-lataaja MBR:lle sekä asenna
 tiedostoja boot-lataajan data-hakemistoon
(jos ne eivät jo ole siellä). Asenna MBR:lle Kiinnitys epäonnistui! Kiinnitä (mount) valittu tiedostojärjestelmä Siirrä alas valittu käynnistysrivi (entry) tai käsky (script) Siirrä ylös valittu käynnistysrivi (entry) tai käsky (script) Nimeä käynnistysrivi (entry) Käynnityslatainta ei löydy Ei skriptejä löydettävissä Osioiden valitsin Ole hyvä, kirjoita tallennusvälineen nimi! Esikatselu: Binaarista Proxya ei löydy ! Poista käsky (script) asetuksista Tallenna asetukset ja luo uusi  Lisää rivi (script): Sekuntia Valitse _partitio (osio)... Valitse ja asenna juuri-osio (root partition) Valitse tarvittavat alikiinnityspisteet(submountpoints) Käynnistyslatain on asennettu onnistuneesti Tehty asetus ei ole samanlainen kuin tallennettu asetus käynnistyksessä. Joten se mitä näet nyt, ei ehkä ole samaa kuin mitä näet, kun käynnistät PC:n uudelleen. Korjaa tämä klikkaamalla 'päivitys' ! Tallennettu asetus ei ole päivitetty ! Nämä ovat kiinnityskohdat fstab -tiedostossasi.
Ole hyvä, välitse jokainen grub/boot:iin liittyvä osio. Tämä vaihtoehto ei toimi, jos "os-prober" käskyrivi löytää toisenkäyttöjärjestelmän. Kytke pois "%1" jos et tarvitse muita käyttöjärjestelmiä. Tämä ei näytä olevan juuri tiedostojärjestelmä (fstab ei löydy) Aika loppu Saadaksesi yllä olevat värimääritykset toimimaan,
sinun tulee valita taustakuva ! Irroita kiinnitetty tiedostojärjestelmä Valitsit lisävaihtoehdon, jolla valitaan jokin toinen osio.
Huom: Os-prober ei ehkä löydä toimivaa käyttöjärjestelmää.Tällöin käynnistä Grub Customizer kohdejärjestelmästä käsin uudelleen
ja tallenna asetukset (tai käynnistä päivitä-grub/päivitä-borg)
(update-grub/update-burg). Näin saat käynnistysvaihtoehdon käyttöösi. käynnistit Grub Customizer:in live CD:ltä käsin. Näet kaikki käynnistysvaihtoehdot (muokkaamattomat), kun suoritat grubia. Tämä virhe ilmenee (useinmiten), jos et ole asentanut grub customizer:ia oikein. _Erityiset _Tallennusväline :  _Éditoi _Tiedosto _Yleiset A_pua _Asenna MBR:lle _Lopeta ilman tallentamista _Lopeta ilman päivittämistä _Tallenna ja lopeta _Päivitä ja lopeta _Katso _käytä jotakin toista osiota:  taustaväri taustakuva musta sininen ruskea En voi siirtää käynnistysriviä (entry) säädä resoluutio:  syaani vaalean harmaa oletus käynnistysrivi merkistön väri luo toipumiseen käskyrivi vihreä korostettu: asennetaan käynnistyslatainta.. on aktiivinen kernel määritykset (parameters) etiketti vaalean sininen vaalea syaani vaalean harmaa vaalean vihreä vaalea magenta vaalean punainen ladataan asetukset... Etsi toista käyttöjärjestelmää magenta valikon värit nimi normaali: osio esi_valittu:  aiemmin valittu _käynnistysrivi punainen lataa uudelleen asetukset poista taustakuva asetukset näytä valikko (menu) läpinäkyvä tyyppi irroitus epäonnistui ! päivitetään asetuksia arvo näkyvyys valkoinen keltainen 