/// @description Insert description here
// You can write your code in this editor
if (DialogueManager.isDisplaying){return;}

invincibleElapsed--;
showingHealthElapsed--;
if (invincibleElapsed<=0){
isInvincible=false;
}
if (showingHealthElapsed<=0){

isShowingHealthBar=false;
}

if (invincibleElapsed>0){
image_blend=make_color_rgb(255,105,126)
bloodTimer++;
if (bloodTimer>=2){
	bloodTimer=0;
isShakeLeft=!isShakeLeft;
}
if (isShakeLeft){
x+=5;
}else{x-=5;}
//if (invincibleElapsed%2==0){x+=5;}else{x-=5;}
}else{
image_blend=c_white
}
