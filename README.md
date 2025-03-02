# draft-happel-mailmaint-pdparchive

This repo contains sources for https://datatracker.ietf.org/doc/draft-TBD

## Convert
This section describes how the markdown source can be converted to XML or PDF.

You can also use/adapt the included `build.sh` script for this.

### Markdown to XML
* Make sure you have installed [Mmark](https://mmark.miek.nl/)
* Run:
% ./mmark filename.md > filename.xml

### XML to PDF
* Make sure you have installed [XML2RFC](https://github.com/ietf-tools/xml2rfc)
* Run:
% xml2rfc --v3 filename.xml --pdf
