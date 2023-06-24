gpu_set_blendenable(false);

if(pause){
	surface_set_target(application_surface);
	if(surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
	else{
		pauseSurf = surface_create(resW, resH);
		buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
	}
	surface_reset_target();
}

if(keyboard_check_pressed(vk_escape)){
	if(!pause){
		pause = true;
		
		instance_deactivate_all(true);
		instance_activate_object(oMenueBook);
		
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	}else{
	pause = false;
	instance_activate_all();
		
	if(surface_exists(pauseSurf)) surface_free(pauseSurf);
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}else if(keyboard_check_pressed(ord("E")) and room == Bibliothek){
	if(!pause  and (
	collision_circle(oTeleportBookLevel1.x, oTeleportBookLevel1.y, oTeleportBookLevel1.radius, oCharacter, false, true) or
	collision_circle(oTeleportBookLevel2.x, oTeleportBookLevel2.y, oTeleportBookLevel2.radius, oCharacter, false, true) or 
	collision_circle(oTeleportBookLevel3.x, oTeleportBookLevel3.y, oTeleportBookLevel3.radius, oCharacter, false, true)
	)){
		pause = true;
		
		instance_deactivate_all(true);
		instance_activate_object(oLevel1StartBook);
		instance_activate_object(oLevel2StartBook);
		instance_activate_object(oLevel3StartBook);
		
		pauseSurf = surface_create(resW, resH);
		surface_set_target(pauseSurf);
		draw_surface(application_surface,0,0);
		surface_reset_target();
		
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	}else{
	pause = false;
	instance_activate_all();
		
	if(surface_exists(pauseSurf)) surface_free(pauseSurf);
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}
gpu_set_blendenable(true);