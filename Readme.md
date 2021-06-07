Level up your web scraping skills: Extracting 2020 presidential election votes from news images
===============================================================================================

This is the code from the article I published on [Medium](https://gilles-rochefort.medium.com/level-up-your-scraping-skills-extracting-2020-election-votes-from-news-images-ae5114305388)

It describes a method to retrieve the number of votes as published on CNN live story hour by hour.

You can find a [bash script](scripts/GetLivestoryJsonWithCurl.sh) to download the Json files from the live story news site. Those Json files are also provided in this repository, they contain links to the images I am processing in the article (or you can download the images [there](https://drive.google.com/file/d/1buiBNb5oa2X6y8iuASsvwaGNfzSvJg40/view))

Have a look to the Jupyter notebook to get more insight on the python code.

Python requirements:
- pandas
- scikit-image
- Pillow
- tqdm
- requests
- ipyplots
- pytesseract
- matplotlib