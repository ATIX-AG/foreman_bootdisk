��    !      $  /   ,      �  h   �     R  	   W  
   a  9   l     �     �     �     �     �  �        �     �     �          8  
   S  =   ^     �     �  <   �  �     (   �  ,   �    &  q   ?  �   �  -   f	  /   �	  �   �	  0   �
  1   �
  n    y   �     �            @   !     b     |      �     �     �    �     �     �  &     !   /  $   Q     v  o   �     �       c   ,  �   �  6   �  :   �  �  �  �   �  �     F   �  8   6  (  o  ?   �  @   �                                                                      
         	                                                               !                 All images are usable as either ISOs or as disk images, including being written to a USB disk with `dd`. Back Boot disk Boot disks Command to generate ISO image, use genisoimage or mkisofs Download generic image Download host image Full host '%s' image Full host image Generic image Generic images are a reusable disk image that works for any host registered in Foreman.  It requires a basic DHCP and DNS service to function and contact the server, but does not require DHCP reservations or static IP addresses. Help Host '%s' image Host has no IP address defined Host has no domain defined Host has no subnet defined Host image Host is not in build mode, so the template cannot be rendered ISO build failed ISO hybrid conversion failed Installation media files will be cached for full host images Once chainloaded, the OS bootloader and installer are downloaded directly from the installation media configured in Foreman, and the provisioning script (kickstart/preseed) is downloaded from Foreman. Path to directory containing iPXE images Path to directory containing syslinux images Per-host images contain data about a particular host registered in Foreman and set up fully static networking, avoiding the requirement for DHCP.  After networking is configured, they chainload from Foreman, picking up the current OS configuration and build state from the server. Plugin for Foreman that creates iPXE-based boot disks to provision hosts without the need for PXE infrastructure. The OS install continues using the installation media configured in Foreman, and it will typically configure static networking, depending on how the OS iPXE template is configured. True for full, false for basic reusable image Unable to find template specified by %s setting Various types of boot disks can be created to provision hosts without the need for PXE services.  Boot disks can be attached to the host (physical or virtual) which boots from the disk, contacts Foreman and begins the OS installation. iPXE template to use for generic host boot disks iPXE template to use for host-specific boot disks Project-Id-Version: foreman_bootdisk 15.0.0
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2019-04-18 20:22+0000
Last-Translator: Lukáš Zapletal
Language-Team: Italian (http://www.transifex.com/foreman/foreman/language/it/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: it
Plural-Forms: nplurals=2; plural=(n != 1);
 Tutte le immagini possono essere utilizzate come ISO o immagini del disco, incluso la scrittura su un disco USB con `dd`. Indietro Disco d'avvio Dischi d'avvio Comando per generare l'immagine ISO, usare genisoimage o mkisofs Scarica immagine generica Scarica immagine host Immagine '%s' dell'host completa Immagine host completa Immagine generica Le immagini generiche sono immagini del disco riutilizzabili idonee per qualsiasi host registrato in Foreman. È necessario avere un server DNS e DHCP generico per un funzionamento corretto e contattare il server, non necessita prenotazioni DHCP o indirizzi IP statici. Aiuto Immagine '%s' dell'host L'host non presenta alcun indirizzo IP L'host non presenta alcun dominio L'host non presenta alcuna sottorete Immagine host L'host non è in modalità di compilazione, per questo motivo è impossibile eseguire il rendering del template compilazione ISO fallita Conversione ISO hybrid fallita I file del dispositivo di installazione verranno memorizzati in cache per le immagini host complete Una volta caricato a catena il bootloader del sistema operativo e l'installer verranno scaricati direttamente del dispositivo di installazione configurato in Foreman, e lo script di provisioning (kickstart/preseed) verrà scaricato da Foreman. Percorso per la directory contentente le immagini iPXE Percorso per la directory contentente le immagini syslinux Le immagini per-host contengono i dati su un particolare host registrato in Foreman e per l'impostazione di un networking completamente statico. Così facendo non sarà necessario utilizzare DHCP. Dopo la configurazione del networking verrà eseguito un caricamento a catena da Foreman, rilevando così la configurazione del sistema operativo corrente e lo stato della compilazione del server. Plugin per Foreman in grado di creare i dischi d'avvio basati su iPXE per il provisioning degli host, senza utilizzare infrastrutture PXE. L'installazione del sistema operativo continua usando il dispositivo d'installazione configurato in Foreman, e generalmente configurerà il networking statico in base alla configurazione del template iPXE del sistema operativo. True per immagini complete o false per immagini riutilizzabili di base Impossibile trovare il template usando l'impostazione %s È possibile creare diversi tipi di dischi d'avvio per il provisioning degli host senza la necessità di utilizzare i servizi PXE. I dischi d'avvio possono essere collegati all'host (fisici o virtuali) che esegue l'avvio dal disco, contatta Foreman e inizia l'installazione del sistema operativo. Template iPXE da usare per i dischi d'avvio degli host generici Template iPXE da usare per i dischi d'avvio degli host specifici 