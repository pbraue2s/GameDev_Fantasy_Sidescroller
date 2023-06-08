
/// @description add animation

// Inherit the parent event
/// @description add animation

// Inherit the parent event

if (!mouse_check_button(mb_right)) {
    event_inherited(); // Execute inherited event if the right mouse button is not pressed
} else {
    sprite_index = sPlayerLev1; // Set the sprite of the game character to sPlayerLev1 (Animation)
    if (place_meeting(x, y + vsp, oMapObject)) { // Check for collision with oMapObject in the next vertical position (y + vsp)
        while (!place_meeting(x, y + sign(vsp), oMapObject)) { // While there is no collision in the next vertical position
            y += sign(vsp); // Adjust the vertical position of the character (move up or down step by step)
        }
        vsp = 0; // Set the vertical speed (vsp) to 0 to stop the movement
    }
    y += vsp; // Adjust the vertical position of the character (movement)
}

// Animation
if (place_meeting(x, y + 1, oErde)) { // Check for collision with oErde (ground) in the next vertical position
    image_speed = 1; // Set the animation speed to 1
    if (hsp == 0) { // Check if the horizontal speed (hsp) is 0
        sprite_index = sPlayerLev1; // Set the sprite of the game character to sPlayerLev1 (animation)
    } else {
        sprite_index = sPlayerLev1R; // Set the sprite of the game character to sPlayerLev1R (animation)
    }
}

with (oSword) {
    if (image_index == 1) image_index = 2; // If the current image index of the sword is 1, set it to 2 (animation)
    if (image_index == 2 and other.swingTime == 0) { // If the current image index of the sword is 2 and swingTime of the other object is 0
        image_index = 0; // Set the image index of the sword to 0 (animation)
    }
}

if (place_meeting(x, y + 1, oErde)) { // Check for collision with oErde (ground) in the next vertical position
    if (mouse_check_button(mb_left) and weaponTyp == 0 and weaponDelay == 0) { // Check if the left mouse button is pressed and weaponTyp is 0 and weaponDelay is 0
        with (oSword) {
            image_index = 1; // Set the image index of the sword to 1 (animation)
        }
        swingTime = 5; // Set swingTime to 5
        weaponDelay = 20; // Set weaponDelay to 20
    }
    if (weaponDelay != 0) weaponDelay--; // Decrease weaponDelay if it's not 0
    if (swingTime != 0) swingTime--; // Decrease swingTime if it's not 0
}

if (mouse_check_button(mb_left) and weaponTyp == 1 and weaponDelay == 0) { // Check if the left mouse button is pressed and weaponTyp is 1 and weaponDelay is 0
    if (image_xscale == 1) {
        with (oWeapon) {
            with (instance_create_layer(x - 40, y - 20, "Fireball", oFireball)) {
                speed = 15; // Set the speed of the fireball to 15
                direction = point_direction(x, y, mouse_x, mouse_y); // Set the direction of the fireball based on the mouse position
            }
        }
    } else {
        with (oWeapon) {
            with (instance_create_layer(x, y - 20, "Fireball", oFireball)) {
                speed = 15; // Set the speed of the fireball to 15
                direction = point_direction(x, y, mouse_x, mouse_y); // Set the direction of the fireball based on the mouse position
            }
        }
    }
    weaponDelay = 20; // Set weaponDelay to 20
}

// Remove the code responsible for flying upwards when pressing the right mouse button in the air