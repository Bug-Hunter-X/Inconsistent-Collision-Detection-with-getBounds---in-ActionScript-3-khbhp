function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  //This function checks for collision between two DisplayObjects in ActionScript 3.
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);

  return rect1.intersects(rect2);
}