/// @description add animation

// Inherit the parent event
/// @description add animation

// Inherit the parent event
event_inherited();

//Animation
if(place_meeting(x,y+1,oErde)){

    image_speed= 1;
    if(hsp==0){
    sprite_index=sPlayerLev1;
    
    }
    else{
    sprite_index= sPlayerLev1R;
    }
}

with(oSword){
    if(image_index == 1) image_index = 2;
    if(image_index == 2 and other.swingTime == 0){
        image_index = 0;
    }

}

if(mouse_check_button(mb_left) and weaponDelay == 0){
    with(oSword){
        image_index = 1;
    }
    swingTime = 5;
    weaponDelay = 20;
}
if(weaponDelay != 0) weaponDelay--;
if(swingTime != 0)swingTime--;



if(mouse_check_button(mb_left) and weaponDelay == 0 ){
    with(oWeapon){
      with(instance_create_layer(x, y, "Fireball", oFireball)){
        speed = 15;
        direction = point_direction(x, y, mouse_x, mouse_y);
    }
}
    weaponDelay = 20;
}
