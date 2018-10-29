library(jsonlite)
library(httr)
library(RCurl)

#Assignment - Web APIs

The New York Times web site provides a rich set of APIs, as described here: [http://developer.nytimes.com/docs] http://developer.nytimes.com/docs
You'll need to start by signing up for an API key.  Your task is to choose one of the New York Times APIs, construct an interface in R to read in 
the JSON data, and transform it to an R dataframe.

## Reading in movie review API
url <- GET("https://api.nytimes.com/svc/movies/v2/reviews/search.json", query = list(api_key = "e6151b6f4d364acf8d6e5d8af9ef7072"))
url

APIMovie <- fromJSON("https://api.nytimes.com/svc/movies/v2/reviews/search.json?api_key=e6151b6f4d364acf8d6e5d8af9ef7072") 
APIMovie

## Reading in article search API
url <- GET("https://api.nytimes.com/svc/search/v2/articlesearch.json", query = list(api_key = "e6151b6f4d364acf8d6e5d8af9ef7072"))
url

APIArticle <- fromJSON("https://api.nytimes.com/svc/search/v2/articlesearch.json?api_key=e6151b6f4d364acf8d6e5d8af9ef7072") 
APIArticle 

## Reading in top stories API
url <- GET("http://api.nytimes.com/svc/topstories/v2/home.json", query = list(api_key = "e6151b6f4d364acf8d6e5d8af9ef7072"))
url

APITopStories <- fromJSON("http://api.nytimes.com/svc/topstories/v2/home.json?api_key=e6151b6f4d364acf8d6e5d8af9ef7072") 
APITopStories
