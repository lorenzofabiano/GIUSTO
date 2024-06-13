/// @description Insert description here
// You can write your code in this editor
upPos = min(upPos + upSpd,upDistance);
duration = max(duration - 1, 0);

if (duration == 0) instance_destroy();