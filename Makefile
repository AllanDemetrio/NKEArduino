# Configurações do Arduino
BOARD_PACKAGE = arduino:avr
BOARD_TYPE = uno

# Diretório do código-fonte do Arduino
ARDUINO_SRC_DIR = build

# Comando para fazer o upload do firmware para o Arduino
upload:
    arduino-cli upload -p /dev/ttyUSB0 --fqbn $(BOARD_PACKAGE):$(BOARD_TYPE) $(ARDUINO_SRC_DIR)/$(TARGET).hex
