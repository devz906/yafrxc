#include <stdint.h>

void trigger_jit_bridge() {
    // This is the exact code your Amethyst-MeloNX.js script expects
    // x16 = 1 (CMD_PREPARE_REGION), brk #0xf00d (The Hook)
    __asm__ volatile (
        "mov x16, #1\n"
        "brk #0xf00d"
        : : : "x16"
    );
}
