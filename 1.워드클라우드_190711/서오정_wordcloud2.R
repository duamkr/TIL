setwd("C:/Users/709-000/Downloads")
library(wordcloud2)
library(RColorBrewer)
library(KoNLP)
library(stringr)
library(dplyr)
library(ggplot2)
library(extrafont)
useSejongDic()


mergeUserDic(data.frame("시부레", "ncn"))
mergeUserDic(data.frame(readLines("카톡단어추가.txt"), "ncn"))


head(kakao2)
kakao <- readLines("kakao.txt")
kakao1 <- sapply(kakao, extractNoun, USE.NAMES=F)
head(kakao1)
kakao2 <- unlist(kakao1)
kakao2 <- Filter(function(x) {nchar(x) >  1}, kakao2)
kakao2 <- Filter(function(x) {nchar(x) <= 6}, kakao2)

kakao3 <- str_replace_all(kakao2, "[^[:alpha:]]","''")
kakao3 <- gsub('\\d+','',kakao3)
kakao3 <- gsub(' ','',kakao3)
kakao3 <- gsub("'",'',kakao3)
kakao3 <- gsub('ㅋ','',kakao3)
kakao3 <- gsub('ㅎ','',kakao3)
kakao3 <- gsub('이모','',kakao3)
gsub_text <- readLines("avengers_gsub.txt")
cnt_txt <- length(gsub_text)
i <- 1
for (i in 1:cnt_txt) {
  data5 <- gsub((gsub_text[i]),'',data4)
}


write(unlist(kakao3),'kakao_fliter.txt')
re_kakao <- read.table("kakao_fliter.txt")
wordcount <- table(re_kakao)
wordcount2 <-head(sort(wordcount, decreasing = T),200)
head(wordcount2, 200)
wordcloud2(data = wordcount2,color = "random-light", backgroundColor = "grey")
```