VERILOG = iverilog
TARGET = voter.vcd
TEMP = RTL.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): RTL_tb.v RTLcode.v
	$(VERILOG) -o $(TEMP) RTL_tb.v RTLcode.v
clean:
	-del $(TARGET)
	-del $(TEMP)