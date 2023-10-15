# Binaries
MAIN            := aout

# Compilers
CROSS           := mipsel-linux-gnu-
AS              := $(CROSS)as
CC              := ./bin/cc1-26
LD              := $(CROSS)ld
CPP				:= $(CROSS)cpp
OBJCOPY         := $(CROSS)objcopy
AS_FLAGS        += -Iinclude -march=r3000 -mtune=r3000 -no-pad-sections -O1
CC_FLAGS        += -mips1 -mcpu=3000 -quiet -G0 -Wall -fno-builtin -mno-abicalls -funsigned-char -O2
CPP_FLAGS       += -Iinclude -undef -Wall -lang-c -fno-builtin -gstabs
CPP_FLAGS       += -Dmips -D__GNUC__=2 -D__OPTIMIZE__ -D__mips__ -D__mips -Dpsx -D__psx__ -D__psx -D_PSYQ -D__EXTENSIONS__ -D_MIPSEL -D_LANGUAGE_C -DLANGUAGE_C


# Directories
ASM_DIR         := asm
SRC_DIR         := src
BUILD_DIR       := build
CONFIG_DIR      := config
TOOLS_DIR       := tools

# Files
MAIN_ASM_DIRS   := $(ASM_DIR)/$(MAIN) $(ASM_DIR)/$(MAIN)/psxsdk $(ASM_DIR)/$(MAIN)/data
MAIN_SRC_DIRS   := $(SRC_DIR)/$(MAIN) $(SRC_DIR)/$(MAIN)/psxsdk
MAIN_S_FILES    := $(foreach dir,$(MAIN_ASM_DIRS),$(wildcard $(dir)/*.s)) \
					$(foreach dir,$(MAIN_ASM_DIRS),$(wildcard $(dir)/**/*.s))
MAIN_C_FILES    := $(foreach dir,$(MAIN_SRC_DIRS),$(wildcard $(dir)/*.c)) \
					$(foreach dir,$(MAIN_SRC_DIRS),$(wildcard $(dir)/**/*.c))
MAIN_O_FILES    := $(foreach file,$(MAIN_S_FILES),$(BUILD_DIR)/$(file).o) \
					$(foreach file,$(MAIN_C_FILES),$(BUILD_DIR)/$(file).o)
MAIN_TARGET     := $(BUILD_DIR)/$(MAIN)


# Tooling
PYTHON          := python3
SPLAT_DIR       := $(TOOLS_DIR)/n64splat
SPLAT           := $(PYTHON) $(SPLAT_DIR)/split.py


define list_src_files
	$(foreach dir,$(ASM_DIR)/$(1),$(wildcard $(dir)/**.s))
	$(foreach dir,$(ASM_DIR)/$(1)/data,$(wildcard $(dir)/**.s))
	$(foreach dir,$(ASM_DIR)/$(1)/psxsdk,$(wildcard $(dir)/**.s))
	$(foreach dir,$(SRC_DIR)/$(1),$(wildcard $(dir)/**.c))
	$(foreach dir,$(SRC_DIR)/$(1)/psxsdk,$(wildcard $(dir)/**.c))
endef


define list_o_files
	$(foreach file,$(call list_src_files,$(1)),$(BUILD_DIR)/$(file).o)
endef


define link
	$(LD) -o $(2) \
		-Map $(BUILD_DIR)/$(1).map \
		-T $(1).ld \
		-T $(CONFIG_DIR)/undefined_syms_auto.$(1).txt \
		-T $(CONFIG_DIR)/undefined_funcs_auto.$(1).txt \
		--no-check-sections \
		-nostdlib \
		-s
endef

all: main 
	sha1sum --check aout.exe.sha
clean:
	rm -rf $(BUILD_DIR)


main: main_dirs $(MAIN_TARGET).exe
main_dirs:
	$(foreach dir,$(MAIN_ASM_DIRS) $(MAIN_SRC_DIRS),$(shell mkdir -p $(BUILD_DIR)/$(dir)))
$(MAIN_TARGET).exe: $(MAIN_TARGET).elf
	$(OBJCOPY) --dump-section .header=$(MAIN_TARGET).header $<
	$(OBJCOPY) -O binary $< $(MAIN_TARGET).bin
	cat $(MAIN_TARGET).header $(MAIN_TARGET).bin > $@
$(MAIN_TARGET).elf: $(MAIN_O_FILES)
	$(LD) -o $@ \
	-Map $(MAIN_TARGET).map \
	-T $(MAIN).ld \
	-T $(CONFIG_DIR)/undefined_syms_auto.$(MAIN).txt \
	--no-check-sections \
	-nostdlib \
	-s

extract: extract_main 
extract_main: $(SPLAT)
	$(SPLAT) --basedir . $(CONFIG_DIR)/splat.$(MAIN).yaml
$(CONFIG_DIR)/generated.symbols.%.txt:

$(SPLAT):
	git submodule init $(SPLAT_DIR)
	git submodule update $(SPLAT_DIR)
	pip3 install -r $(SPLAT_DIR)/requirements.txt

$(BUILD_DIR)/%.s.o: %.s
	$(AS) $(AS_FLAGS) -o $@ $<
$(BUILD_DIR)/%.bin.o: %.bin
	$(LD) -r -b binary -o $@ $<
$(BUILD_DIR)/%.c.o: $(BUILD_DIR)/%.c.s
	$(AS) $(AS_FLAGS) -o $@ $<
$(BUILD_DIR)/%.c.s: %.c
	$(CPP) $(CPP_FLAGS) $< | $(CC) $(CC_FLAGS) -o $@

SHELL = /bin/bash -e -o pipefail

.PHONY: all, clean
.PHONY: main
.PHONY: %_dirs
.PHONY: extract, extract_%











