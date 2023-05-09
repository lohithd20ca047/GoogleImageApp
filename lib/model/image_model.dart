class Imagemodel {
  Imagemodel({
    required this.searchMetadata,
    required this.searchParameters,
    required this.searchInformation,
    required this.suggestedSearches,
    required this.imagesResults,
    required this.relatedSearches,
  });

  final SearchMetadata? searchMetadata;
  final SearchParameters? searchParameters;
  final SearchInformation? searchInformation;
  final List<SuggestedSearch> suggestedSearches;
  final List<ImagesResult> imagesResults;
  final List<RelatedSearch> relatedSearches;

  factory Imagemodel.fromJson(Map<String, dynamic> json) {
    return Imagemodel(
      searchMetadata: json["search_metadata"] == null
          ? null
          : SearchMetadata.fromJson(json["search_metadata"]),
      searchParameters: json["search_parameters"] == null
          ? null
          : SearchParameters.fromJson(json["search_parameters"]),
      searchInformation: json["search_information"] == null
          ? null
          : SearchInformation.fromJson(json["search_information"]),
      suggestedSearches: json["suggested_searches"] == null
          ? []
          : List<SuggestedSearch>.from(json["suggested_searches"]!
              .map((x) => SuggestedSearch.fromJson(x))),
      imagesResults: json["images_results"] == null
          ? []
          : List<ImagesResult>.from(
              json["images_results"]!.map((x) => ImagesResult.fromJson(x))),
      relatedSearches: json["related_searches"] == null
          ? []
          : List<RelatedSearch>.from(
              json["related_searches"]!.map((x) => RelatedSearch.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "search_metadata": searchMetadata?.toJson(),
        "search_parameters": searchParameters?.toJson(),
        "search_information": searchInformation?.toJson(),
        "suggested_searches":
            suggestedSearches.map((x) => x?.toJson()).toList(),
        "images_results": imagesResults.map((x) => x?.toJson()).toList(),
        "related_searches": relatedSearches.map((x) => x?.toJson()).toList(),
      };
}

class ImagesResult {
  ImagesResult({
    required this.position,
    required this.thumbnail,
    required this.relatedContentId,
    required this.serpapiRelatedContentLink,
    required this.source,
    required this.title,
    required this.link,
    required this.original,
    required this.originalWidth,
    required this.originalHeight,
    required this.isProduct,
    required this.tag,
  });

  final int? position;
  final String? thumbnail;
  final String? relatedContentId;
  final String? serpapiRelatedContentLink;
  final String? source;
  final String? title;
  final String? link;
  final String? original;
  final int? originalWidth;
  final int? originalHeight;
  final bool? isProduct;
  final String? tag;

  factory ImagesResult.fromJson(Map<String, dynamic> json) {
    return ImagesResult(
      position: json["position"],
      thumbnail: json["thumbnail"],
      relatedContentId: json["related_content_id"],
      serpapiRelatedContentLink: json["serpapi_related_content_link"],
      source: json["source"],
      title: json["title"],
      link: json["link"],
      original: json["original"],
      originalWidth: json["original_width"],
      originalHeight: json["original_height"],
      isProduct: json["is_product"],
      tag: json["tag"],
    );
  }

  Map<String, dynamic> toJson() => {
        "position": position,
        "thumbnail": thumbnail,
        "related_content_id": relatedContentId,
        "serpapi_related_content_link": serpapiRelatedContentLink,
        "source": source,
        "title": title,
        "link": link,
        "original": original,
        "original_width": originalWidth,
        "original_height": originalHeight,
        "is_product": isProduct,
        "tag": tag,
      };
}

class RelatedSearch {
  RelatedSearch({
    required this.link,
    required this.serpapiLink,
    required this.query,
    required this.highlightedWords,
    required this.thumbnail,
  });

  final String? link;
  final String? serpapiLink;
  final String? query;
  final List<String> highlightedWords;
  final String? thumbnail;

  factory RelatedSearch.fromJson(Map<String, dynamic> json) {
    return RelatedSearch(
      link: json["link"],
      serpapiLink: json["serpapi_link"],
      query: json["query"],
      highlightedWords: json["highlighted_words"] == null
          ? []
          : List<String>.from(json["highlighted_words"]!.map((x) => x)),
      thumbnail: json["thumbnail"],
    );
  }

  Map<String, dynamic> toJson() => {
        "link": link,
        "serpapi_link": serpapiLink,
        "query": query,
        "highlighted_words": highlightedWords.map((x) => x).toList(),
        "thumbnail": thumbnail,
      };
}

class SearchInformation {
  SearchInformation({
    required this.imageResultsState,
    required this.menuItems,
  });

  final String? imageResultsState;
  final List<MenuItem> menuItems;

  factory SearchInformation.fromJson(Map<String, dynamic> json) {
    return SearchInformation(
      imageResultsState: json["image_results_state"],
      menuItems: json["menu_items"] == null
          ? []
          : List<MenuItem>.from(
              json["menu_items"]!.map((x) => MenuItem.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "image_results_state": imageResultsState,
        "menu_items": menuItems.map((x) => x?.toJson()).toList(),
      };
}

class MenuItem {
  MenuItem({
    required this.position,
    required this.title,
    required this.link,
    required this.serpapiLink,
  });

  final int? position;
  final String? title;
  final String? link;
  final String? serpapiLink;

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      position: json["position"],
      title: json["title"],
      link: json["link"],
      serpapiLink: json["serpapi_link"],
    );
  }

  Map<String, dynamic> toJson() => {
        "position": position,
        "title": title,
        "link": link,
        "serpapi_link": serpapiLink,
      };
}

class SearchMetadata {
  SearchMetadata({
    required this.id,
    required this.status,
    required this.jsonEndpoint,
    required this.createdAt,
    required this.processedAt,
    required this.googleImagesUrl,
    required this.rawHtmlFile,
    required this.totalTimeTaken,
  });

  final String? id;
  final String? status;
  final String? jsonEndpoint;
  final String? createdAt;
  final String? processedAt;
  final String? googleImagesUrl;
  final String? rawHtmlFile;
  final double? totalTimeTaken;

  factory SearchMetadata.fromJson(Map<String, dynamic> json) {
    return SearchMetadata(
      id: json["id"],
      status: json["status"],
      jsonEndpoint: json["json_endpoint"],
      createdAt: json["created_at"],
      processedAt: json["processed_at"],
      googleImagesUrl: json["google_images_url"],
      rawHtmlFile: json["raw_html_file"],
      totalTimeTaken: json["total_time_taken"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
        "json_endpoint": jsonEndpoint,
        "created_at": createdAt,
        "processed_at": processedAt,
        "google_images_url": googleImagesUrl,
        "raw_html_file": rawHtmlFile,
        "total_time_taken": totalTimeTaken,
      };
}

class SearchParameters {
  SearchParameters({
    required this.engine,
    required this.q,
    required this.locationRequested,
    required this.locationUsed,
    required this.googleDomain,
    required this.hl,
    required this.gl,
    required this.device,
  });

  final String? engine;
  final String? q;
  final String? locationRequested;
  final String? locationUsed;
  final String? googleDomain;
  final String? hl;
  final String? gl;
  final String? device;

  factory SearchParameters.fromJson(Map<String, dynamic> json) {
    return SearchParameters(
      engine: json["engine"],
      q: json["q"],
      locationRequested: json["location_requested"],
      locationUsed: json["location_used"],
      googleDomain: json["google_domain"],
      hl: json["hl"],
      gl: json["gl"],
      device: json["device"],
    );
  }

  Map<String, dynamic> toJson() => {
        "engine": engine,
        "q": q,
        "location_requested": locationRequested,
        "location_used": locationUsed,
        "google_domain": googleDomain,
        "hl": hl,
        "gl": gl,
        "device": device,
      };
}

class SuggestedSearch {
  SuggestedSearch({
    required this.name,
    required this.link,
    required this.chips,
    required this.serpapiLink,
    required this.thumbnail,
  });

  final String? name;
  final String? link;
  final String? chips;
  final String? serpapiLink;
  final String? thumbnail;

  factory SuggestedSearch.fromJson(Map<String, dynamic> json) {
    return SuggestedSearch(
      name: json["name"],
      link: json["link"],
      chips: json["chips"],
      serpapiLink: json["serpapi_link"],
      thumbnail: json["thumbnail"],
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "link": link,
        "chips": chips,
        "serpapi_link": serpapiLink,
        "thumbnail": thumbnail,
      };
}
