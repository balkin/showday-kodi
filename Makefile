VERSION=1.0.7
FILENAME=plugin.video.showday.tv-$(VERSION).zip
PLUGIN=plugin.video.showday.tv

all: $(FILENAME)

$(FILENAME): $(PLUGIN)
	sed -i -e 's@       version=".*"@        version="$(VERSION)"@' $(PLUGIN)/addon.xml
	zip -r9 $(FILENAME) $(PLUGIN)

clean:
	rm $(FILENAME)

install: all
	adb push $(FILENAME) /sdcard/

