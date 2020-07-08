CFLAGS_      = $(CFLAGS) -O3
LDFLAGS      = -lm
MCC_FLAGS_   = --verbose --ompss
MCC_FLAGS_I_ = --instrument
MCC_FLAGS_D_ = --debug -g
LDFLAGS_     = $(LDFLAGS)
FPGA_CLOCK  ?= 100

PROGRAM_ = yuv_filter
PROGS_   = $(PROGRAM_)

MCC  ?= fpgacc
MCC_  = $(CROSS_COMPILE)$(MCC)
GCC_  = $(CROSS_COMPILE)gcc

.PHONY: all  bitstream-zedboard clean
all: $(PROGS_)


hls-analysis: ${PROGRAM_}.c
	mkdir -p /home/ompss/IP_Cache
	mkdir -p ${PWD}/hls_analysis
	$(MCC_) -D__SYNTHESIS__ $(CFLAGS_) $(MCC_FLAGS_) --bitstream-generation \
	--Wf,"--verbose,--name=$(PROGRAM_),--dir=${PWD}/hls_analysis,--board=zedboard,--hwruntime=som,--clock=$(FPGA_CLOCK),--to_step=HLS,--IP_cache_location=$(HOME)/IP_Cache/,--disable_utilization_check" \
	$^ -o $(PROGRAM_) $(LDFLAGS_)

bitstream-zedboard: ${PROGRAM_}.c 
	mkdir -p /home/ompss/IP_Cache
	mkdir -p ${PWD}/zedboard
	$(MCC_) -D__SYNTHESIS__ $(CFLAGS_) $(MCC_FLAGS_) --bitstream-generation \
	--Wf,"--verbose,--name=$(PROGRAM_),--dir=${PWD}/zedboard,--board=zedboard,--hwruntime=som,--clock=$(FPGA_CLOCK),--IP_cache_location=$(HOME)/IP_Cache/" \
	$^ -o $(PROGRAM_) $(LDFLAGS_)

smp-zedboard: ./$(PROGRAM_).c
	$(MCC_) $(CFLAGS_) $(MCC_FLAGS_) \
	$^ -o smp_$(PROGRAM_) $(LDFLAGS_)

clean:
	rm -f *.o $(PROGS_)
