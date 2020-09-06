class NewsDataModel {
  final String newsAuthor;
  final String publishedDate;
  final String newsTitle;
  final String newsDescription;
  final String newsContent;
  final String newsImageUrl;

NewsDataModel {
	this.newsAuthor,
	this.publishedDate,
	this.newsTitle,
	this.newsDescription,
	this.newsContent,
	this.newsImageUrl,
}

  factory NewsDataModel.fromJson(Map<String, dynamic> parsedData){
	return NewsDataModel(
		newsAuthor : parsedData['author'],
        	publishedDate : parsedData['publishedAt'],
        	newsTitle : parsedData['title'],
        	newsDescription : parsedData['description'],
        	newsContent : parsedData['content'],
        	newsImageUrl : parsedData['urlToImage'],
	);
		}
}
