function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean {
  //This function checks for collision between two DisplayObjects in ActionScript 3, correctly handling different parent containers.
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);

  // Convert both rectangles to stage coordinates
  var globalRect1:Rectangle = obj1.parent.localToGlobal(new Point(rect1.x, rect1.y));
  globalRect1.x -= obj1.parent.x;
  globalRect1.y -= obj1.parent.y;
  var globalRect2:Rectangle = obj2.parent.localToGlobal(new Point(rect2.x, rect2.y));
  globalRect2.x -= obj2.parent.x;
  globalRect2.y -= obj2.parent.y;

  return globalRect1.intersects(globalRect2);
}
//Note: Additional transformations might be necessary depending on the complexity of your scene hierarchy.