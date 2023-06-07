if(global.blueGem == 1 and global.redGem == 1 and global.greenGem == 1){
	if(collision_circle(x, y, radius, oCharacter, false, true)){
		room_goto(EndbossRoom);
	}
}