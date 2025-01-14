
# Supernote A6X Planner

![An Opinionated Super A6X Planner](images/image1.png)
![Squeeze out all available spaces](images/image2.png)
![Navigate from anywhere](images/image3.png)
![Full Year Calendar](images/image4.png)
![Monthly Calendar](images/image5.png)
![Monthly Calendar](images/image6.png)
![Weekly Calendar](images/image7.png)
![Weekly Calendar](images/image8.png)
![Daily Calendar](images/image9.png)
![Daily Calendar](images/image10.png)
![Individual Indexed Note](images/image11.png)
![Individual Indexed List](images/image12.png)
![Individual Indexed Events](images/image13.png)

## Rationale

I just wanted a PDF Planner specifically designed for 7.8" screen
instead designed for 10.3" (A5) and scaled down. I want to be able
to use the planner without having to zoom in or out, or use the
half-page viewing feature.

I only know two A6X-specific planner, one by ePaperTemplate and
another by LinesAndDesign. The former I find it hard to use with
small link target box, and the later is still very small.

I would have love the My Daily Organiser, except it's very small
and the 2023 version is even smaller because they were designed
to handle Supernote Toolbar in all location. So my design only 
allow top toolbar.

The unique feature of this planner is the "Event" section. I
use them to keep track of local event occurring around me.
I noted down the one I might be interested, and when I have time
I just look through the list to see where I should go on my
day off.

This is revision 3 of my design, and the one
I feel is good enough to share. Enjoy.


## Environment Setup (Windows)
PHP v8.1.27 - https://windows.php.net/downloads/releases/php-8.1.27-Win32-vs16-x64.zip

php.ini: enabled extensions: {curl, gd, intl, mbstring, exif, openssl}

OpenSSL v3.0.12 - https://slproweb.com/download/Win64OpenSSL-3_2_0.msi

Composer - https://getcomposer.org/Composer-Setup.exe


## Building

Make sure to copy all font files of folder /fonts/ into folder /vendor/tecnickcom/tcpdf/fonts/

If necessary adapt the (calendar) year in build.php e.g. to $YEAR = 2024;

php make-planner.php de 11000 2023-12 2025-03 "Daily Planner" "2024" MPDP-2024_de.pdf
will generate a German (de) version, 1st day of week Monday, dotted, 200 extra pages, 24h, day-shift

See `make-planner.php` and `build.php` for other configurations.
More common configurations are available in Release section.


## Further Extensions
Additional Tasks view for monthly view (done, 240107.2143)

Dedicated quarterly level with additional Planner / Notes / Tasks view


## License

The code and planner file are licensed under AGPL-3.0 license.

## Attribution

The icon in the planner has been designed using resources from Flaticon.com
