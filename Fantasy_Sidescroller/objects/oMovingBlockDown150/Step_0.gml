if(blockMovementRange <= 0){
	blockMovementDirection *= -1;
	blockMovementRange = blockMovementStartRange
}
y += (blockMovementSpeed*blockMovementDirection)
if(place_meeting(x, y-1, oShapeshifter)){
	with(oShapeshifter){
		y += (other.blockMovementSpeed*other.blockMovementDirection)
	}
}
if(place_meeting(x, y+5, oShapeshifter) and blockMovementDirection == 1){
	with(oShapeshifter){
		y += (other.blockMovementSpeed*other.blockMovementDirection)
	}
}
blockMovementRange--;