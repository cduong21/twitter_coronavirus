# Coronavirus analysis

## Background
Approximately 500 million tweets are sent everyday. Of those tweets, about 2% are geotagged. That is, the user's device includes location information about where the tweets were sent from. The lambda server's `/data-fast/twitter2020` folder contains all geotagged tweets that were sent in 2020. In total, there are about 1.1 billion tweets in this dataset.

The tweets are stored as follows. The tweets for each day are stored in a zip file geoTwitterYY-MM-DD.zip, and inside this zip file are 24 text files, one for each hour of the day. Each text file contains a single tweet per line in JSON format. JSON is a popular format for storing data that is closely related to python dictionaries.

## Processes
1. Mapping: The program `src/map.py` wil process the zip files, this program will go through the tweets and create a `.lang` and `.country` file appropriately.

2. Visualizing: The program `src/visualize.py` will display the output from running `map.py` program. This displays the total times the hashtags specified in map.py appear. This output is represented as a dicionary of dictionaries. The outermost dictionary has languages as the kays and the innermot dictionary has hashtags as the key (similar format for the country)

3. Reducing: This program will merge all the outputs that were created by `map.py` to provide users with a visualization of how many times a particular hashtag was used.

## Instructions
In order to run the program, users must be connected to a particular lambda server.

In order to run `map.py` on the high volume of tweets, run the command `nohup ./run_maps.sh`. By running nohup we can ensure that the program continues to run after being disconnected to the server.

After map.py has been run, the output folder will contain a .lang and .country file for each day for the tweets located in /data-fast/twitter2020.

Next run `./compile.sh` which combines the two scripts `./makedir.sh` which creates all the necessary files to later be populated by the script `./reduce.sh`.

After following these instructions, the user will see visualizations in `viz`
