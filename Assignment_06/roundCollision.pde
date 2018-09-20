boolean roundCollision(Human ball1, Human ball2)
{
  int maxDistance = ball1.size;

  if(abs(ball1.pos.x - ball2.pos.x) > maxDistance
  || abs(ball1.pos.y - ball2.pos.y) > maxDistance)
  {
    return false;
  }

  else if(dist(ball1.pos.x, ball1.pos.y,
    ball2.pos.x, ball2.pos.y) > maxDistance)
  {
    return false;
  }
  else
  {
   return true;
  }
}
