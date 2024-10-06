======================
TilesetPal Version 1.1
======================

Introduction
------------

TilesetPal is an application made for easing the process of color reduction
from a 24-bit image to an 8-bit palettized image, particularly for
Jazz Jackrabbit 2 tilesets.  With proper use of TilesetPal, color reduction
becomes a breeze, and yields much better results than using the Remap Colors
feature in JCS.


Requirements
------------

Microsoft .NET Framework Version 1.1
    (See the Troubleshooting section if you do not have this.)


Installation
------------

TilesetPal.exe should be able to be run from anywhere, so long as the
computer you're running it on has the necessary requirements.  All you need to
do is run TilesetPal.exe


Files
-----

These are the files that were included in this release:

    ./TilesetPal.exe - The actual program.
    ./ReadMe.txt - This file.
    ./Palettes/Jazz2.pal - The standard Jazz Jackrabbit 2 palette header
    ./Palettes/Jazz2 Carrotus pole.pal - Standard colors used for the Carrotus pole.
    ./Palettes/Jazz2 Diamondus pole.pal - Standard colors used for the Diamondus pole.
    ./Palettes/Jazz2 Jungle pole.pal - Standard colors used for the Jungle pole.
    ./Palettes/Jazz2 pinball.pal - Standard colors used for all the pinball events.
    ./Palettes/Jazz2 Psych pole.pal - Standard colors used for the psych pole.
    ./Palettes/Jazz2 small tree.pal - Standard colors used for the small tree.
    ./Palettes/Jazz2 snow.pal - Standart colors used for snow.
    ./Palettes/Jazz2 water.pal - Standard colors used for water.  (Also the range of the textured background.)


Usage
-----

Here is an example overview of how to use TilesetPal.

Step 0: Run the program.

    Find TilesetPal.exe and run it.

Step 1: Load an image.

    This can either be done through the menu File->Load... or by pushing the
    Load Source button in the Toolbox.  The image file you load must be either
    a bitmap or a PCX file.  (If you believe that some other file format would
    be much more useful, contact me and I'll see if I can add support for
    another image file format.)

Step 2: Get your initial colors.

    TilesetPal was made primarily for the purpose of working on tilesets for
    the game Jazz Jackrabbit 2, so I will go with the assumption that you are
    working on such a tileset.  All JJ2 tilesets have a set of specific colors
    at the beginning of the palette, so what we want to do is get that
    standard JJ2 palette header into our palette.  The way we do this most
    easily is by using the Palette Merger.

Step 2.1: Using the Palette Merger.

    Open up the Palette Merger Dialog box either through the menu
    Palette->Merger... or by pushing the Palette Merger... button at the
    bottom of the Palette panel.  From here you want to use the menu
    File->Load Palette... to load the external palette.  You can load a
    variety of different palette formats, including the palettes out of
    indexed bitmaps or PCX files.  You should have gotten a Jazz2.pal file
    along with this program, so you can load that.  To copy the colors from
    the file (External Palette) to the palette that will be used (Internal
    Palette), simply select all the colors in the External Palette by clicking
    on the first (upper left-hand corner) box and then dragging down and
    across till all the colors are selected.  This push the button labeled
    "->" to copy those colors from the External Palette to the Internal
    Palette.  Finally, press the OK button to confirm the Internal Palette.

Step 2.2: (Optional) Advanced copying colors in the Palette Merger.

    The Palette Merger is a powerful tool for copying colors back and forth
    between palettes.  Most likely you will be able to learn how the interface
    works by using it rather than me trying to explain it, however I will
    still try to explain it for the sake of completeness.

    With "Link selected position" checked:
    This is the simplest way to operate the Palette Merger, because basically
    whatever range of color boxes you select in one palette, that same range
    will be selected for both palettes.  This way you can copy colors from one
    palette to the same place in the other palette.  Selecting ranges of color
    boxes is just a simple matter of clicking and dragging.

    With "Link selected position" un-checked:
    If you don't want to be restricted to copying colors to the same place in
    each palette, you can uncheck "Link selected position" and select
    indepedant ranges on either palette.  When you select a range of color
    boxes in one palette, the same number of color boxes will be selected in
    both palettes, just like before, only the ranges might not be in the same
    place for each palette.  The beginning of the last range you selected will
    remain the beginning of the range for that palette until you select a new
    range in that palette.  If you didn't understand that, just go and play
    around with the Palette Merger, and I'm sure you'll get it.

Step 3: Marking color availability.

    Now that we have the standard JJ2 colors in our palette, we want to mark
    them so that they get used properly in the color reduction algorithm.  By
    default, all the colors are marked as Available.  This means when the
    color reduction algorithm runs, it can change any of the Available colors
    to whatever it decides is most useful.  Since we just copied in the
    standard JJ2 colors, we don't want the color reduction algorithm to
    overwrite those.  What you want to do is select those first six rows of
    colors, and then check the radio button to mark those selected colors as
    "Don't Change".  This way, when the color reduction algorithm runs, it
    will not change any of these colors, but it can still use those colors
    should they match anything in the image.  As for the first row of colors,
    you shouldn't really use those at all, so mark all of those (except the
    blue/purple background color) as "Don't Use".  The background color is the
    only color in the first row you want to keep as "Don't Change".  A small
    note on the background color: it is possible that the background color you
    used does not exactly match that second color in the palette.  You might
    want to look at the "Picking Colors" topic below to make sure you pick the
    actual background color you used from your source image.

Step 4: Running the color reduction algorithm.

    Everything should be set up for the color reduction algorithm now, so all
    we need to do is run that.  You can run the color reduction algorithm
    through the menu Actions->Reduce Colors... or by pushing the Reduce Colors
    button in the Toolbox.  That will run, and once it is done, push the Done
    button, and you should now see a final bitmap will the available colors in
    the palette filled up.

Step 5: Save the final image.

    So save the final indexed image, simply either use the menu File->Save...
    or push the Save Final... button.  You can choose to save the final image
    as either an 8-bit bitmap or PCX file.

And you're done!

Here are a couple other things you can do that I didn't mention in the above
process, because I'm not sure if you'll actually need it.

Changing Colors

    As you select colors in the Palette panel, you will see them represented
    below in the Color panel.  In the color panel, you can change the red,
    green, and blue values for the color at the current index.  You can also
    change the color by double-clicking on the color preview box.

Picking Colors

    You can pick colors from either the source or the final images using the
    color picker.  To use the color picker, push down the Picker button in the
    Color panel.  That button will stay down so long as the color picker is
    active.  To deactivate the color picker, simply push the Picker button
    again.  With the color picker enabled, you can click anywhere in the
    either the source image or the final image and it will pick that color.
    If you click in the final image, it will also pick the index of that
    color.  This may be handy if you want to try to find or change a
    particular color.  If you click in the source image, it will take the
    color values, and change them for the color at the current index.  You
    need to be careful with the color picker and the clicking in the source
    image so that you don't accidentally overwrite an important color in your
    palette.  That being said, this feature can be useful in picking out
    important colors, such as the background color, from the source image so
    you can specify that they shouldn't be changed during the color reduction
    algorithm.


Troubleshooting
---------------

The program won't start:

        "Application Error - The application failed to initialize properly
        (0xc0000135). Click OK to terminate the application"

    or

        "Unable to Locate DLL - The Dynamic Link Library mscoree.dll could not
        be found in the specified path."

    If you get one of these error messages when you try to start the program,
    then you are probably missing the .NET Framework.  The .NET Framework
    (Version 1.1) is required for this program to run.  You can download the
    .NET Framework from Windows Update (http://windowsupdate.microsoft.com) or
    from this URL:

        http://www.microsoft.com/downloads/details.aspx?FamilyId=262D25E3-F589-4842-8157-034D1E7CF3A3&displaylang=en


Distribution
------------

TilesetPal is to be distributed only through the website(s) that I (the
author) make this (package of TilesetPal) available on, so long as those
websites exist.  Otherwise this is to be distributed unmodified and with
all the files that it originally came with for no charge or anything.
Blah blah blah, usual EULA stuff.  This is basically freeware unless otherwise
stated on the originating website.  Use common sense.  Send email to
tilesetpal@madskills.org for more permission.


Version History
---------------

1.1 - 2006-02-21
    Fixes:
        Distorted 24-bit PCX loading bug.
        Distortion and color counting problems with odd sized images.
    Improvements:
        Color reduction algorithm.  Hopefully it'll do a better job of picking
        colors.

1.0 - 2005-05-30
    First release.  Dedicated to the grand tileset maker and my internet twin
    Disguise for his 21st birthday.


Feedback
--------

Questions, comments, suggestions, offers of money or jobs can be emailed to me
(Jeffrey Lindsey/Monolith) through the address:

    tilesetpal@madskills.org


Website
-------

Updates and stuff (should) be available at:

    http://monolith.madskills.org/tilesetpal/
	
Or wherever you originally got this.


Copyright
---------

TilesetPal is Copyright (c) 2005 by Jeffrey Lindsey (Monolith)


=== END OF FILE ===