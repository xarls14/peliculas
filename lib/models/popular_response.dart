import 'dart:convert';

import 'models.dart';

class PopularResponse {
    int page;
    List<Movie> results;
    int totalPages;
    int totalresults;

    PopularResponse({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalresults,
    });

    factory PopularResponse.fromJson(String str) => PopularResponse.fromMap(json.decode(str));

    factory PopularResponse.fromMap(Map<String, dynamic> json) => PopularResponse(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromMap(x))),
        totalPages: json["total_pages"],
        totalresults: json["total_results"],
    );
}