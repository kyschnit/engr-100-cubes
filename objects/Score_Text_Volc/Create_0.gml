//Stops any current music and plays the level's music
//Adds a font
audio_stop_all();
audio_play_sound(Tutorial_Music,1,1);
t1 = font_add("Cube Font.ttf",14,false,false, 32, 128);
global.t2 = font_add(text_font,18,false,false, 32, 128);