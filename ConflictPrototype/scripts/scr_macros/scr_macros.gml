///Game-wide variables

//---Card dims---
#macro CARD_H 35
#macro CARD_W 25

#macro SLOT_FRAME 5

#macro SLOT_H (CARD_H + (SLOT_FRAME*2))
#macro SLOT_W (CARD_W + (SLOT_FRAME*2))

//---Board dims---
#macro CARD_BUFFER 10
#macro BOARD_W ((CARD_W * 3) + (CARD_BUFFER * 4)) //145
#macro BOARD_H ((CARD_H * 2) + (CARD_BUFFER * 3)) //120


//---Object depths---
//lower number = closer to camera

#macro POPUP_INFO_D -600
#macro POPUP_D -500
#macro CARD_D 0
#macro SLOT_D 100
#macro HIGHLIGHT_D 150
#macro BOARD_D 200

