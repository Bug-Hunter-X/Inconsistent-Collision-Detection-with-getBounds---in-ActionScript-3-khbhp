# ActionScript 3 Collision Detection Bug
This repository demonstrates a subtle bug in ActionScript 3's collision detection when using the `getBounds()` method with DisplayObjects in different parent containers. The `checkCollision` function, while seemingly simple, produces incorrect results in such scenarios.

## Bug Description
The issue stems from the fact that `getBounds(parent)` calculates the bounding rectangle relative to the specified `parent` object. If `obj1` and `obj2` have different parents, their coordinates are in different coordinate spaces.  Direct comparison using `intersects()` then yields incorrect results.

## Solution
The solution involves converting both bounding rectangles to the same coordinate space before comparing them.  This can be achieved using the `localToGlobal()` and `globalToLocal()` methods to transform coordinates relative to the stage.