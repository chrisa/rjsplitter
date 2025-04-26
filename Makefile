all: rjsplitter.lid.stl rjsplitter.case.stl

rjsplitter.scad: rjsplitter.kicad_pcb
	turbocase rjsplitter.kicad_pcb rjsplitter.scad

rjsplitter.%.stl: rjsplitter.scad
	openscad -D'render="$*"' -o rjsplitter.$*.stl rjsplitter.scad

.PHONY: clean
clean:
	rm -f rjsplitter.scad rjsplitter.*.stl