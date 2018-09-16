
First use wget to recursively download pages from the URL. The -l option is the recusion depth, set to 1 below:

$ mkdir site
$ cd site
$ wget -q -r -l1  http://www.foobar.com

Then run a recursive grep to extract the email addresses. (The regex below is not perfect and may need to be tweaked if you find that not all addresses are being picked up.)

$ grep -hrio "\b[a-z0-9.-]\+@[a-z0-9.-]\+\.[a-z]\{2,4\}\+\b" *

As an aside, wget does have an option (-O -) to print downloaded content to stdout instead of saving it to disk but, unfortunately, it does not work in recursive (-r) mode.
