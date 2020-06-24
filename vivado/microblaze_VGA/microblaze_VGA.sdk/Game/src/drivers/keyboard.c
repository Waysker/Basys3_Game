#include "keyboard.h"

status_code_t keyboard_init() {
	volatile unsigned int * keyboard = (PS2_ADDR);

	if(keyboard[3] != PS2_MAGIC_CODE) {
		return ERR;
	}

	return OK;
}

/** Reads the PS2 code of key from code */
uint8_t read_key(uint16_t code) {
	return code & 0xFF;
}

key_state_t get_key_state(uint16_t code) {
	if((code&&0xFF) == 0) { // The keyboard hasn't been used this time
		return RELEASED;
	}

	if (0xF0 == ((code>>8)&0xFF))
		return RELEASED;
	else
		return PRESSED;
}

const keyboard_state_t keyboard_get_state() {

	volatile unsigned int *keyboard = PS2_ADDR;
	volatile uint16_t keyboard_code = keyboard[0];

	const keyboard_state_t keyboard_state = {
		.key_state = get_key_state(keyboard_code),
		.key = read_key(keyboard_code)
	};

	return keyboard_state;
}

void keyboard_wait_key() {

	while(keyboard_get_state().key_state != PRESSED || keyboard_get_state().key != KEY_ENTER) {

	}
}
