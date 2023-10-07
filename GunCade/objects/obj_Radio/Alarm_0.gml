/// @description position set!

 var camX        = camera_get_view_x( view_camera[0] );
 var camY        = camera_get_view_y( view_camera[0] );
 var camWidth    = camera_get_view_width( view_camera[0] );
 var camHeight   = camera_get_view_height( view_camera[0] );
 var padding =  5;
 //x = camX + camWidth - sprite_width - padding;

//image_alpha = 0.5;
image_xscale =  0.625; // 0.57
image_yscale =  0.625; 

volumeButtonStartX = x + 48;
volumeButtonStartY = y + 230;

timerDigitX = x + 140;
timerDigitY = y + 108;
 
songNameX  = x + (sprite_width/2);
songNameY  = y + 56;
songOwnerX = x + (sprite_width/2);
songOwnerY = y + 19;


cog_X = x + 86;
cog_Y = y + 135;

// input positions for control
var rectBuffX = 35;
var rectL = 30;

var rectBuffY = 95;
var rectH = 30;

rectangleX1[1] = x + rectBuffX;
rectangleX2[1] = x + rectBuffX + rectL;
rectangleY1 = y + rectBuffY;
rectangleY2 = y + rectBuffY + rectH;

rectangleX1[2] = x + sprite_width - rectBuffX;
rectangleX2[2] = x + sprite_width - rectBuffX - rectL;



sprButtonToggle_X[1] = x + (sprite_width/2) - (btnXXDif*1) + btnXXX; // triangle L
sprButtonToggle_X[2] = x + (sprite_width/2)                + btnXXX; // Pause
sprButtonToggle_X[3] = x + (sprite_width/2) + (btnXXDif*1) + btnXXX; // triangle R
sprButtonToggle_Y    = y + sprite_height - 102; 

var rectAjustX = 15;
var rectAjustY = 13;
rectangleX1[1] = sprButtonToggle_X[1] - rectAjustX;
rectangleX2[1] = sprButtonToggle_X[1] + rectAjustX;

rectangleX1[2] = sprButtonToggle_X[2] - rectAjustX;
rectangleX2[2] = sprButtonToggle_X[2] + rectAjustX;

rectangleX1[3] = sprButtonToggle_X[3] - rectAjustX;
rectangleX2[3] = sprButtonToggle_X[3] + rectAjustX;

rectangleY1 = sprButtonToggle_Y - rectAjustY;
rectangleY2 = sprButtonToggle_Y + rectAjustY;


// auto set first song!
	var songAuthor     = obj_Control_All.arraySongs[ obj_Control_All.playListSongActiveBools[ obj_Control_All.current_SongIndex] ].songOwner;
	var songSongLength = obj_Control_All.arraySongs[ obj_Control_All.playListSongActiveBools[ obj_Control_All.current_SongIndex] ].songLength;	
	var songName       = obj_Control_All.arraySongs[ obj_Control_All.playListSongActiveBools[ obj_Control_All.current_SongIndex] ].songName;		
	   
	   songNameCurrentOwnerTime = prefix_SongOwner + songAuthor + " " +  songSongLength + suffix_SongOwner;
	   songNameCurrentName      = prefix_SongName  + songName   + suffix_SongName;

