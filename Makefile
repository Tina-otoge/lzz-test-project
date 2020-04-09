OUTFILE=test
SRCDIR=src
CPPDIR=cpp

LZZFLAGS=-hx hpp -d -o $(CPPDIR)
SRC=$(addprefix $(SRCDIR)/, $(shell cd $(SRCDIR) && find -type f -name '*.lzz'))
LZZ?=lzz

all: lzzs $(OUTFILE)

lzzs:
	@mkdir -p $(CPPDIR)
	$(LZZ) $(LZZFLAGS) $(SRC)

$(OUTFILE):
	$(CXX) -o $(OUTFILE) $(CPPDIR)/*.cpp

clean:
	$(RM) $(OUTFILE)
	$(RM) $(CPPDIR)/*
