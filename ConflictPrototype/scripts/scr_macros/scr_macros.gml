///Game-wide variables

//---Card dims---
#macro CARD_H 35
#macro CARD_W 25

#macro SLOT_FRAME 5

//---Board dims---
#macro CARD_BUFFER (CARD_W * .5)
#macro BOARD_W ((CARD_W * 3) + (CARD_BUFFER * 4))
#macro BOARD_H ((CARD_H * 2) + (CARD_BUFFER * 3))
//#macro BOARD_H 
//#macro BOARD_W

//---Object depths---
//lower number = closer to camera
#macro CARD_D 0
#macro SLOT_D 100
#macro BOARD_D 200
