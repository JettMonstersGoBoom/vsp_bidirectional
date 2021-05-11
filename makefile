# assumes the path of kickass.jar
# you need to update paths

AS = java -jar bin\kickass.jar 
EXO = bin\exomizer
all: vsp.prg

# build test for TaskOS 

vsp.prg: vsp.s
	$(AS) vsp.s -vicesymbols -symbolfile -showmem -bytedump
	$(EXO) sfx basic vsp.prg -o ex.prg

clean:
	rm vsp.prg 

