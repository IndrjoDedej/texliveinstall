#!/bin/sh

# TeXLive Installer [lavori in corso...]

# aquisisci il nome della *.iso col suo percorso da terminale
iso=$1

# altrimenti lamentati
if [ -z $iso ]; then
   echo "\n>>> l'unico uso sensato è:\n   \$ sh $0 iso_col_suo_persorso\n"
   exit 1
fi

# crea se serve la cartella /media/iso...
if [ ! -d /media/iso ]; then
   sudo mkdir /media/iso
fi

# ... e montaci la *.iso
sudo mount -o loop $iso /media/iso

# avvia install-tl
sudo /media/iso/install-tl

# a lavoro finito smonta la *.iso
sudo umount /media/iso

# ... e rimuovi la cartella /media/iso
sudo rm -rf /media/iso
