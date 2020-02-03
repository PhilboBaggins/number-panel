MAIN_SRC_FILE := NumberPanel.scad

EXPORT_1 := number-panel-for-bunnings-mirror

OPENSCAD_EXPORTS := \
	exports/${EXPORT_1}.dxf \
	exports/${EXPORT_1}.svg \

ALL_EXPORTS := ${OPENSCAD_EXPORTS} \
	exports/${EXPORT_1}.png

.PHONY: all clean

all: ${ALL_EXPORTS}

${OPENSCAD_EXPORTS}: exports/${EXPORT_1}.scad ${MAIN_SRC_FILE}
	openscad -o $@ $<

%.png: %.svg
	convert $< $@

clean:
	rm -f ${ALL_EXPORTS}
