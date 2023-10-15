SECTIONS
{
    _gp = 0x800EE754;
    __romPos = 0x800;
    . = __romPos;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(16)
    {
        header_TEXT_END = .;
        header_DATA_START = .;
        header_s = .;
        build/asm/aout/header.s.o(.data);
        header_DATA_END = .;
    }
    header_ROM_END = 0x800;
    __romPos = 0x800;

    __romPos = 0x800;
    . = __romPos;
    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80010000 : AT(main_ROM_START) SUBALIGN(4)
    {
        main_TEXT_END = .;
        main_DATA_START = .;
        _800_data__s = .;
        build/asm/aout/data/800.data.s.o(.data);
        main_TEXT_START = .;
    }
    __romPos = 0x8318;
    . = __romPos;
    main_8318c_ROM_START = __romPos;
    main_8318c_VRAM = ADDR(.main_8318c);
    .main_8318c 0x80017B18 : AT(main_8318c_ROM_START) SUBALIGN(4)
    {
        build/src/aout/8318.c.o(.text);
    }
    __romPos = 0x18E90;
    . = __romPos;
    main_18E90c_ROM_START = __romPos;
    main_18E90c_VRAM = ADDR(.main_18E90c);
    .main_18E90c 0x80028690 : AT(main_18E90c_ROM_START) SUBALIGN(4)
    {
        build/src/aout/18E90.c.o(.text);
        build/src/aout/18F40.c.o(.text);
        build/src/aout/18FE0.c.o(.text);
        build/src/aout/19010.c.o(.text);
        build/src/aout/19070.c.o(.text);
        build/src/aout/19080.c.o(.text);
        build/src/aout/19100.c.o(.text);
        build/src/aout/2D0A0.c.o(.text);
        build/src/aout/3AED0.c.o(.text);
        build/src/aout/3AF20.c.o(.text);
        build/src/aout/3AF50.c.o(.text);
        build/src/aout/3B630.c.o(.text);
        build/src/aout/3B700.c.o(.text);
        build/src/aout/3B9C0.c.o(.text);
        build/src/aout/3BCB0.c.o(.text);
        build/src/aout/3BDC0.c.o(.text);
        build/src/aout/3BDF0.c.o(.text);
        build/src/aout/3BE40.c.o(.text);
        build/src/aout/3BE50.c.o(.text);
        build/src/aout/AD770.c.o(.text);
        C3300_data__s = .;
        build/asm/aout/data/C3300.data.s.o(.data);
        main_DATA_END = .;
    }
    main_ROM_END = 0xDF000;
    __romPos = 0xDF000;

    /DISCARD/ :
    {
        *(*);
    }
}
