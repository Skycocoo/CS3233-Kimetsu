/// @description Insert description here
// You can write your code in this editor

numSmallInosuke = 5
numRock = 5

for(i = 0; i < numSmallInosuke; ++i) {
	instance_create_depth(0, 0, 0, obj_Small_Inosuke)
}

for(i = 0; i < numRock; ++i) {
	instance_create_depth(0, 0, 0, obj_Rock)
}