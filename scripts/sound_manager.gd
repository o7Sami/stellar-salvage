extends Node2D


func Hintergrund_abspielen():
	$hintergrund.play()

func Schluessel_abspielen():
	$Schluessel.play()

func Tuer_abspielen():
	$Tuer.play()

func Boxenschieben_abspielen():
	$Boxenschieben.play()

func Shooting_abspielen():
	$Shooting.play()

func Teleporter_abspielen():
	$Teleporter.play()

func Hit_abspielen():
	$Hit_Sound.play()

func Tod_abspielen():
	$Tot_sound.play()

func Spieler_schaden_abspielen():
	$Spieler_Schaden_sound.play()

func verlieren_abspielen():
	$verlieren_sound.play()

func Heilen_abspielen():
	$Heilen_sound.play()
