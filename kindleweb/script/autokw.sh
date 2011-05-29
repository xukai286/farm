#! /bin/sh

startdate=`date '+%F'`
enddate=9999-12-31

/home/ren/kindleweb/bin/pullrss

/home/ren/kindleweb/bin/parserss

/home/ren/kindleweb/bin/formatitem -s $startdate

for texfile in rss_$startdate*
do
	/usr/bin/pdflatex $texfile
done