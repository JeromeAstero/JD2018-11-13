FOR %%I (*.txt) DO(
    native2ascii -encoding UTF-8 %%I %%~nI.properties
)