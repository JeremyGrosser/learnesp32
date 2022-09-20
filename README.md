# Ada on ESP32C3
This is a proof of concept for running Ada on the ESP32-C3 microcontroller. It just writes a string to the UART. While the ESP-IDF SDK provides support for wifi and bluetooth, it requires binary blobs, which I'd rather not use. There are copies of those blobs in mask ROM on the chip that you can call, but there is no documentation about these symbols beyond their memory addresses.

The startup assembly and linker scripts are copied from ESP-IDF and modified to work with the GNAT-FSF toolchain. `.sdata` was relocated to the `drom` section.
