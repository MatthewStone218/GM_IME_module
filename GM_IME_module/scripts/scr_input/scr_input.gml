// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function get_IME_string(){
	var _window_handle = window_handle();
	return GetImeComposition(string(_window_handle));
}

function clear_IME_string(){
	var _window_handle = window_handle();
	return ClearImeString(string(_window_handle));
}

function get_full_keyboard_string(){
	return keyboard_string + get_IME_string();
}

function clear_full_keyboard_string(){
	keyboard_string = "";
	clear_IME_string();
}