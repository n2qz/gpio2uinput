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
