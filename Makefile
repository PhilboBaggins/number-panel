MAIN_SRC_FILE := NumberPanel.scad

EXPORT_1 := number-panel-for-bunnings-mirror

ALL_EXPORTS := \
	exports/${EXPORT_1}.dxf \
	exports/${EXPORT_1}.svg

.PHONY: all clean

all: ${ALL_EXPORTS}

${ALL_EXPORTS}: exports/${EXPORT_1}.scad ${MAIN_SRC_FILE}
	openscad -o $@ $<

clean:
	rm -f ${ALL_EXPORTS}
