# Blockbuster
A datapack for animating blocks in Minecraft Java Edition

Showcase/demonstration video: https://www.youtube.com/watch?v=gY2f7aoQ8gk

# How to use
## Installing the pack
Paste "blockbuster_dp" in the "datapacks" folder inside the save folder of whichever world you want to use the datapack in. You will also need to paste "blockbuster_rp" in your "resourcepacks" folder and enable it in-game.

Run the command `/tag @s add blockbuster` to enable the hotbar UI on yourself. When you give yourself the `blockbuster` tag, a wrench icon named "Edit Mode" will appear in your rightmost hotbar slot. Right-clicking this item will take you into the edit mode home menu. You can click all of the items that appear in your hotbar to either take you to a new menu or perform their corresponding action. For example, the leftmost item in the home menu is named "New Block", and right-clicking this item on another block will place down an animateable block. You can change an animateable block's type by right-clicking it with whichever block that you want to change it to.

## Parenting blocks
In the "Options" menu, there is an item in the leftmost slot named "Add Parent". This feature lets you parent a block's transformations to another block, meaning that its position and rotation will stay relative to that of its parent. By clicking the "Add Parent" item while looking at a block, you will then be prompted to select another block as the parent. If you want to unparent a block, you do this with the "Remove Parent" item.

## Transforming blocks
You can move and rotate animateable blocks in the "Transform" menu. "Move" and "Rotate" items act in the direction in which you are facing. You can move a block forwards or backwards relative to your position. These actions are analogous to "pushing" or "pulling" the block, and you can do so in increments of 2 blocks, 1/2 blocks, or 1/16 blocks. You can likewise rotate a block clockwise or counter-clockwise according to the side of the block that you are looking at. Rotation increments are 90 degrees, 15 degrees, and 2.5 degrees.

## Animating blocks
The "Animate" menu allows you to animate groups of parented blocks with keyframes. The "Timeline" menu lets you move around in the animation's timeline or adjust its length in the "Animation Length" menu. The Transition menu inside the Animate menu is the exact same as from the Home menu, and it's only in the Animate menu for convenience. The "Keyframe" menu lets you add a keyframe of a block's position, rotation, or both at the current time in the timeline. You can move existing keyframes by +0.05 seconds or -0.05 seconds, or remove them if desired. Within the "Transition Type" menu, you can change how you want to transition out of a keyframe. When you're adding a keyframe to a block, you must first select the time in the timeline, second transform the block to your liking, and third add the keyframe.

Once you are happy with your blocks' animation, you should naviate to the Options menu and lock the animation using the "Lock Animation" item. This action significantly helps with the game's performance by hardcoding in each block's position and rotation. You can still perform many of the Options on locked blocks, but you cannot transform or animate them further. You also cannot unlock an animation; locking also cannot be undone, so be sure that you're satisfied with your animation before you lock it. Your game will lag, though, if you have too many unlocked animations, so you are encouraged to lock them when possible.

## Options
Along with parenting blocks in the Options menu, you can also do the following: add a collision box to a block, copy a block and its children, hide and unhide blocks, delete blocks, and finally delete block hierarchies (the block and its children).
