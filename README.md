# -XCI-Batch-Builder-
*****************
XCI Batch Builder(v0.1)
*****************
Made by JulesOnTheRoad
https://github.com/julesontheroad/-XCI-Batch-Builder-

ADVICE: FOR ALL TO WORK CORRECTLY DON'T USE SPACES IN FOLDER'S NAME.

---------------
0. Changelog
---------------

v0.1 - First official git release

---------------
1. Description
---------------

XCI-Batch-Builder is a batch processor for XCI_Builder and NX-Trimmer. 
It can take single nsp files or xci files and redirect them to XCI_Builder or to NX-Trimmer.
Depending on the type of file it'll redirect the files to one or the other. 
For xci files it'll send them to NX-Trimmer.
For nsp files it'll send them to XCI_Builder.
It can also take a folder with any combination of xci files and nsp files and process them in order 
redirecting them to the apropiate program. The folder can even have other kind of files 
which will be ignored.

For information about usage of XCI_Builder go to:
https://github.com/julesontheroad/XCI_Builder
For information about usage of NX-Trimmer go to:
https://github.com/julesontheroad/NX-Trimmer

Both XCI builder and NX-Trimmer are powered by the following programs:
a.) hacbuild: Program meant to create xci files from nca files, made by LucaFraga.
https://github.com/LucaFraga/hacbuild
b.) hactool: Program which function is give information, decrypt and extract a lot of different kind of files us by the NX System.
Hactool was made by SciresM
https://github.com/SciresM/hactool
c.) nspBuild: Program meant to create nsp files from nca files. 
nspBuild was made by CVFireDragon
https://github.com/CVFireDragon/nspBuild
NX-Trimmer was also inspired by "A Simple XCI, NCA, NSP Extracting Batch file (Just Drag and Drop) with Titlekey decrypt"
by Bigjokker and published in gbatemp:
https://gbatemp.net/threads/a-simple-xci-nca-nsp-extracting-batch-file-just-drag-and-drop-with-titlekey-decrypt.513300/

---------------
2. Requirements
---------------

- A computer with a Window's OS is needed
- You'll need to have the NX-Trimmer and/or XCI_builder files in the same folder. Release pack in
github has all preconfigured.
- You'll need to complete keys.txt in ztools with the keys needed by hactool.
- You'll need to have Python installed for nspbuild to work correctly
- You'll need to have at least .net frameworks 4.5.2 installed so hacbuild can work correctly.

-------------------------
3. Use of the application
-------------------------

I.-   Just drag an xci file, an nsp file or a folder with any combination of xci or nsp files.
      Program will launch instances of XCI_Builder or NX-Trimmer accordingly
II.-  Remember you'll need to have keys.txt filled in advance and it won't process subfolders.
III.- You can set XCI_Builder or NX-Trimmer in two configurations for each of them:
      a) In line with XCI Batch Builder (root of folder)
	  b) In ztools folder (by defect)
	  You can set each of them in one of those locations. You can also delete one of them if you want.
	  If only one is present BatchBuilder will only process it's corresponding type of file.
    
--------------
4. Limitations
--------------

I.-   Current version won't process subfolders.
II-   Current version won't let you choose output folder. Output folder we'll be set in the root of the
      program folder.
III-  It's un likely but if you try to process nsp base game and update look at how remove []tag elimination
      for XCI_Builder or output name we'll be the same overwritting file by last processed. It's unlikely you'll
      do that since having base game and updates as separate xci files is stupid not being able to mount 2 xci files
      at the same time ^_^ 

------------------------
5. Thanks and credits to 
------------------------

LucaFraga, SciresM and CVFireDragon 
Bigjokker from gbatemp for the advices about cleaning echos in Batch files.
Also thanks to all members from gbatemp, elotrolado.net and my friends at discord ;)
