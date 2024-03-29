library(rtweet)
library(stringr)
library(here)

# Create a token containing the Twitter keys
token <- create_token(
  app = "profughiViminale",
  consumer_key = Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token = Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret = Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

# Download tweets
tweet_df <- search_tweets("#accoglienzaucraina sono from:viminale",
                          include_rts = FALSE)

nTweet <- nrow(tweet_df)

if (nTweet > 0) {
  temp <- as.data.frame(tweet_df[1:5])
  temp$created_at <- as.character(temp$created_at)
  
  
  # # Load previous version
  # if(file.exists(here("data", "tweet.csv"))){
  #   hist <- read.csv(here("data", "tweet.csv"), colClasses = "character")
  #   temp <- temp[!(temp$status_id %in% hist$status_id),]
  #   hist <- rbind(temp, hist)
  # }else{
  #   hist <- temp
  # }
  #
  # n <- nrow(temp)
  
  # If there is a new tweet, extract information and save files
  # if(n>0){
  
  n <- nrow(temp)
  
  temp$text <- gsub("\\.", "", temp$text)
  
  res <- data.frame(matrix(NA, nrow = n, ncol = 5))
  colnames(res) <- c("Data", "Totale", "Uomini", "Donne", "Minori")
  
  for (i in 1:n) {
    res$Data[i]   <- temp$created_at[i]
    res$Totale[i] <-
      as.numeric(str_extract(temp$text[i], "[0-9]+(?=\\s*le)"))
    res$Donne[i]  <-
      as.numeric(str_extract(temp$text[i], "[0-9]+(?=\\s*donne)"))
    res$Uomini[i] <-
      as.numeric(str_extract(temp$text[i], "[0-9]+(?=\\s*uomini)"))
    res$Minori[i] <-
      as.numeric(str_extract(temp$text[i], "[0-9]+(?=\\s*minori)"))
  }
  
  res$Data <- as.character(as.Date(res$Data))
  
  if (file.exists(here("data", "outputProfughi.csv"))) {
    hist_res <- read.csv(here("data", "outputProfughi.csv"))
    # res <- rbind(res, hist_res)
    res <- unique(rbind(res, hist_res))
  }
  
  write.csv(
    res,
    file = here("data", "outputProfughi.csv"),
    row.names = F,
    fileEncoding = "UTF-8"
  )
  # write.csv(hist, file = here("data", "tweet.csv"), row.names = F, fileEncoding = "UTF-8")
  # }
  
}
