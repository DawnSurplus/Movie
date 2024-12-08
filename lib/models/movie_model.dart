final class ResultModel {
  final adult;
  final backdrop_path;
  final belongs_to_collection;
  final budget;
  final genres;
  final homepage;
  final id;
  final imdb_id;
  final origin_country;
  final original_language;
  final original_title;
  final overview;
  final popularity;
  final poster_path;
  final production_companies;
  final production_countries;
  final release_date;
  final revenue;
  final runtime;
  final spoken_languages;
  final status;
  final tagline;
  final title;
  final video;
  final vote_average;
  final vote_count;

  ResultModel.formJson(Map<String, dynamic> json)
      : adult = json['adult'],
        backdrop_path = json['backdrop_path'],
        belongs_to_collection = json['belongs_to_collection'],
        budget = json['budget'],
        genres = json['genres'],
        homepage = json['homepage'],
        id = json['id'],
        imdb_id = json['imdb_id'],
        origin_country = json['origin_country'],
        original_language = json['original_language'],
        original_title = json['original_title'],
        overview = json['overview'],
        popularity = json['popularity'],
        poster_path = json['poster_path'],
        production_companies = json['production_companies'],
        production_countries = json['production_countries'],
        release_date = json['release_date'],
        revenue = json['revenue'],
        runtime = json['runtime'],
        spoken_languages = json['spoken_languages'],
        status = json['status'],
        tagline = json['tagline'],
        title = json['title'],
        video = json['video'],
        vote_average = json['vote_average'],
        vote_count = json['vote_count'];
}

// {
//   "adult": false,
//   "backdrop_path": "/3V4kLQg0kSqPLctI5ziYWabAZYF.jpg",
//   "belongs_to_collection": {
//       "id": 558216,
//       "name": "Venom Collection",
//       "poster_path": "/4bXIKqdZIjR8wKgZaGDaLhLj4yF.jpg",
//       "backdrop_path": "/vq340s8DxA5Q209FT8PHA6CXYOx.jpg"
//   },
//   "budget": 120000000,
//   "genres": [
//       {
//       "id": 878,
//       "name": "Science Fiction"
//       },
//       {
//       "id": 28,
//       "name": "Action"
//       },
//       {
//       "id": 12,
//       "name": "Adventure"
//       }
//   ],
//   "homepage": "https://venom.movie",
//   "id": 912649,
//   "imdb_id": "tt16366836",
//   "origin_country": [
//       "US"
//   ],
//   "original_language": "en",
//   "original_title": "Venom: The Last Dance",
//   "overview": "Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie's last dance.",
//   "popularity": 3124.775,
//   "poster_path": "/aosm8NMQ3UyoBVpSxyimorCQykC.jpg",
//   "production_companies": [
//       {
//       "id": 5,
//       "logo_path": "/71BqEFAF4V3qjjMPCpLuyJFB9A.png",
//       "name": "Columbia Pictures",
//       "origin_country": "US"
//       },
//       {
//       "id": 84041,
//       "logo_path": "/nw4kyc29QRpNtFbdsBHkRSFavvt.png",
//       "name": "Pascal Pictures",
//       "origin_country": "US"
//       },
//       {
//       "id": 53462,
//       "logo_path": "/nx8B3Phlcse02w86RW4CJqzCnfL.png",
//       "name": "Matt Tolmach Productions",
//       "origin_country": "US"
//       },
//       {
//       "id": 91797,
//       "logo_path": null,
//       "name": "Hutch Parker Entertainment",
//       "origin_country": "US"
//       },
//       {
//       "id": 14439,
//       "logo_path": null,
//       "name": "Arad Productions",
//       "origin_country": "US"
//       }
//   ],
//   "production_countries": [
//       {
//       "iso_3166_1": "US",
//       "name": "United States of America"
//       }
//   ],
//   "release_date": "2024-10-22",
//   "revenue": 456425476,
//   "runtime": 109,
//   "spoken_languages": [
//       {
//       "english_name": "English",
//       "iso_639_1": "en",
//       "name": "English"
//       }
//   ],
//   "status": "Released",
//   "tagline": "'Til death do they part.",
//   "title": "Venom: The Last Dance",
//   "video": false,
//   "vote_average": 6.443,
//   "vote_count": 964
// }