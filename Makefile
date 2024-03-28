# Configurações do Arduino
BOARD_PACKAGE = arduino:avr
BOARD_TYPE = uno

ARDUINO_PATH = /dev/cu.usbmodem11101

# Diretório do código-fonte do Arduino
ARDUINO_SRC_DIR = src

# Diretório de construção
BUILD_DIR = build

# Nome do arquivo .hex
HEX_FILE = $(BUILD_DIR)/src.ino.hex

compile:
	arduino-cli compile --fqbn $(BOARD_PACKAGE):$(BOARD_TYPE) $(ARDUINO_SRC_DIR) --build-path $(BUILD_DIR)

# Comando para fazer o upload do firmware para o Arduino
upload:
	arduino-cli	upload	-p	$(ARDUINO_PATH)	--fqbn	$(BOARD_PACKAGE):$(BOARD_TYPE)	-i	$(HEX_FILE)

monitor:
	arduino-cli	monitor	-p	$(ARDUINO_PATH)

.PHONY: compile upload	monitor