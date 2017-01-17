## file header here
##
HEADER		= header.v
## define the filename of your memory model
RAMMODEL    = RAM2Kx32.v

VLOG        = ncverilog

GCD			= risc_t.v +define+IPATH=\"01_gcd_plain_bin.dat\"+DPATH=\"01_gcd_plain_data.dat\"

MULT		= risc_t.v +define+IPATH=\"02_mult.dat\"+DPATH=\"01_gcd_plain_data.dat\"

SUMMATION	= risc_t.v +define+IPATH=\"08_summation.dat\"+DPATH=\"08_summationd.dat\"

SRC         = header.v \
              risc_t.v \
              $(RAMMODEL)
SYNSRC      = header.v \
		      syn.v \
              risc_t.v \
              $(RAMMODEL) \
			  /theda21_2/CBDK_IC_Contest/CBDK_IC_Contest_v2.1/Verilog/tsmc13.v

NONSYN		= header.v \
				pipeline.v \
				MUX_A.v \
				MUX_B.v \
				MUX_D.v\
				Register_File.v\
				Decoder.v \
				Function_unit.v
	
VLOGARGSRC     = +access+r

VLOGARG     = +access+r +nospecify +notimingchecks
DEBUG       = +define+DEBUG_MEM_RW
TMPFILE     = *.log \
              verilog.key \
              nWaveLog \
			  INCA_libs

DBFILE      = *.bak

RM          = -rm -rf

#all :: sim

#sim :
#	$(VLOG) $(SRC) $(VLOGARG)

gcd :
	$(VLOG) $(NONSYN) $(GCD) $(RAMMODEL) $(VLOGARG) $(DEBUG) +define+CYC=120
	
mult :

	$(VLOG) $(NONSYN) $(MULT) $(RAMMODEL) $(VLOGARG) $(DEBUG) +define+CYC=120

gcdsyn :
	$(VLOG) $(SYNSRC) $(GCD) $(RAMMODEL)  $(VLOGARGSRC) +define+NETLIST
	

sum :
	$(VLOG) $(NONSYN) $(SUMMATION) $(RAMMODEL) $(VLOGARG) $(DEBUG) +define+CYC=1000
	
sumsyn :
	$(VLOG) $(SYNSRC) $(SUMMATION) $(RAMMODEL)  $(VLOGARGSRC) +define+NETLIST
	
check :
	$(VLOG) -c $(SRC) $(VLOGARG)

syn :
	$(VLOG) $(SYNSRC) $(VLOGARG)

veryclean :
	$(RM) $(DBFILE) $(TMPFILE)
