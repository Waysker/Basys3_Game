#ifndef vga_h
#define vga_h

#include <stdint.h>

#define VGA_ADDR (0x44a00000)
#define BG_COLOR (0x888)
#define BALL_COLOR (0xf0f)
#define Y_MAX 75
#define X_MAX 100

void delay(const int ms);

void vga_clean();

void vga_draw(unsigned char x, unsigned char y, uint16_t color);

void circleBresenham(uint8_t xc, uint8_t yc, uint8_t r, uint8_t *color);

void vga_draw_rect(const uint8_t X, const uint8_t Y, const uint8_t WIDTH, const uint8_t HEIGHT,
		int color);

#endif
