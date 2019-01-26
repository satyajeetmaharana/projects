#!/usr/bin/env python 

import nltk

import sys
import re
import textblob
#from nltk.corpus import stopwords 
from nltk.tokenize import word_tokenize 
from textblob import TextBlob 

def RepresentsInt(s):
    try: 
        int(s)
        return True
    except ValueError:
        return False
for line in sys.stdin:

	if(re.search(r'^$',line)):
		continue
	else:
		line = line.decode('utf-8')
		line = line.split(',')
		if(len(line)>3):
			if(RepresentsInt(line[0]) and RepresentsInt(line[1])):
				analysis = TextBlob(line[3])

				# set sentiment 
				if analysis.sentiment.polarity > 0: 
					print ('{},{},{}\n').format(line[0].encode('utf-8'),line[1].encode('utf-8'),1),
				elif analysis.sentiment.polarity == 0: 
					print ('{},{},{}\n').format(line[0].encode('utf-8'),line[1].encode('utf-8'),0),
				else: 
					print ('{},{},{}\n').format(line[0].encode('utf-8'),line[1].encode('utf-8'),-1),
