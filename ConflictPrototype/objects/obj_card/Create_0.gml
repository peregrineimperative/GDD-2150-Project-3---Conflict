//---Card State---

is_hovered = false;
is_dragging = false;
card_data = undefined;

//---Movement---
//Variables to make sure that the card doesn't immediately snap to the cursor
drag_dx = 0;
drag_dy = 0;

depth = -y;

////


set_card = function(c) {
    card_data = c;
    // name = c.name; faction = c.faction; ...
};

//Slot the card is currently anchored to
current_slot  = noone;
//Keep track of slot we came from during a drag so we can restore on failed drop
prev_slot   = noone;



//Snap radius (tweak as desired); you can also choose overlap-only behavior
snap_radius = max(CARD_W, CARD_H) * 0.6;