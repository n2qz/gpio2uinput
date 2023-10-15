# gpio2uinput

`gpio2uinput` monitors GPIO input pins for state transitions, and
generates uniput events in response.

It is primarily intended for use with the
[Batocera.linux](https://batocera.org/) retrogaming Linux
distribution, to create virtual gamepads driven by arcade-style
buttons or classic "DB-9" controllers using simple switches.

`gpio2uinput` was developed and tested on a StarFive VisionFive 2
riscv64 single-board computer.  It is a userspace program using
[libgpiod](https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod.git/about/)
to read GPIO events, and
[libevdev](https://www.freedesktop.org/wiki/Software/libevdev/) to
generate gamepad input events.

# Wiring

In a typical configuration, one leg of each button will be connected
to a ground point (GND) on the GPIO header, and the other leg will be
connected to an unused GPIO pin.

Unused pins may vary based on which computer/SBC is used, as well as
hardware and software configuration of the system.

Because it is based on `libgpiod`, the `gpio2input` program will fail
to assign pins which are in-use by other `libgpiod` consumers.
However, *pins may be in use by other system components not using
`libgpiod`*, so the user must accept responsibility for properly
selecting unused pins.

- Guidance on selecting GPIO pins for use on Raspberry Pi SBCs can be
found on the [AdaFruit retrogaming
pages](https://learn.adafruit.com/retro-gaming-with-raspberry-pi/adding-controls-hardware).

- Documentation about the GPIO pins on StarFive VisionFive 2 riscv64
board can be found in the [VisionFive 2 40-Pin GPIO Header User
Guide](https://doc-en.rvspace.org/VisionFive2/PDF/VisionFive2_40-Pin_GPIO_Header_UG.pdf).
Much of the guidance on the AdaFruit page also applies to this system,
such as avoiding the console TTY UART pins.

# Disclaimer

The authors, contributors, and providers of this software cannot
accept responsibility for any damage you may cause by improperly
selecting GPIO pins, or any damage that you may cause while making
physical connections to your system.

# Usage

FIXME - coming soon

# ToDo

- Add support for creating multiple virtual gamepads in a single run
- Add better gamepad button selection capabilities
- Strip out some irrelevant code from the original program
- Test on other SBCs
- Write documentation

# Derived Work

This work is derived from the `gpiomon` program from the 1.6.x branch
of libgpiod by Bartosz Golaszewski <bartekgola@gmail.com>.  The
original work was distributed under the LGPL version 2.1.  Because
this derived work is a program and not a library, it is being
distributed under GPL (specifically, GPL3), as required by section 2a
of the LGPL 2.1.  See LICENSE for the complete license.

Nicholas S. Castellano N2QZ, October 14, 2023.
