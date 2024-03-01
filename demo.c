#define F_CPU 16000000L
#define __AVR_ATmega2560__

#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN (2)

#ifdef MOCK
int mock_porta;
#define LED_PORT mock_porta
#else
#define LED_PORT PORTA
#endif

int main(void) {
	DDRA |= 1 << LED_PIN;
	
	for(;;) {
		LED_PORT ^= 1 << LED_PIN;
		_delay_ms(1000);
	}

	return 0;
}
