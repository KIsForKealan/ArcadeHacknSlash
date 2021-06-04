/// MoveAndCollide (_xMove,_yMove)

function MoveAndCollide(_xMove,yMove){
	if not place_meeting(x+_xMove,y,oCollision)
	{
		x += _xMove;	
	}
	
	if not place_meeting(x,y+yMove,oCollision)
	{
		y += yMove;	
	}
}