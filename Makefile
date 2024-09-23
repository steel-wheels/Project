#
# Makefile
#

include Script/doc.mk

src	= README.md4 \
	  Reference.md4
dst	= $(src:.md4=.md)

all: $(dst)

clean:
	rm -f $(dst)


