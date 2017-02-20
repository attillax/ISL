# ISL
Solutions and notes for Gareth James' "An Introduction to Statistical Learning" book

## How to use Makefile for compilation of the documents
All compiled files are placed in the root directory of the project. 
The LaTeX compilation mistakes (e.g. missed image files) are ignored.

###Available Commands
To compile the file with solutions (ISL_solutions.tex) you will need to execute 
the following command:
```
make
```

To compile the file with notes (ISL_notes.tex) you will need to execute the 
following command:
```
make notes
```

To remove all compiled .pdf you will need to execute the following command:
```
make clean
```

All tex-produced files removed automatically after the compilation
