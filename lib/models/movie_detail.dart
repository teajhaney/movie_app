class Movie {
  String movieName;
  String subMovieName;
  String movieDetails;
  String imagePoster;
  String leadActorname;
  String imdbRating;
  String starRating;
  String movieDuration;
  String movieGenre;
  int movieYear;

  Movie({
    required this.movieName,
    required this.subMovieName,
    required this.movieDetails,
    required this.imagePoster,
    required this.leadActorname,
    required this.imdbRating,
    required this.starRating,
    required this.movieDuration,
    required this.movieGenre,
    required this.movieYear,
  });
}

List<Movie> movieDetails = <Movie>[
  Movie(
    movieName: 'Rurôni Kenshin',
    subMovieName: 'The Beginning',
    movieDetails:
        'Before becoming a protector, Kenshin is a fearsome assassin known as Battosai, but his story changes when he meets the gentle Tomoe Yukishiro.',
    imagePoster:
        'assets/images/ruroni-kenshin-sai-shusho-the-final-japanese-combo-movie-poster.jpg',
    leadActorname: 'Masanobu Andô',
    starRating: ' 8.7',
    imdbRating: 'IMDB 7.4',
    movieYear: 2021,
    movieDuration: ' 2h 17m',
    movieGenre: 'Action/Drama',
  ),
  Movie(
    movieName: "Army of Thieves ",
    subMovieName: '',
    movieDetails:
        'A prequel, set before the events of Army of the Dead, which focuses on German safecracker Ludwig Dieter leading a group of aspiring thieves on a top secret heist during the early stages of the zombie apocalypse.',
    imagePoster: 'assets/images/army-of-thieves-movie-poster.jpg',
    leadActorname: 'Matthias Schweighöfer',
    starRating: ' 6.6',
    imdbRating: 'IMDB 6.4',
    movieDuration: '2h 7m',
    movieYear: 2021,
    movieGenre: 'Thriller',
  ),
  Movie(
    movieName: 'Inception ',
    subMovieName: '',
    movieDetails:
        'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.',
    imagePoster: 'assets/images/Inception.jpg',
    leadActorname: 'Leonardo DiCaprio',
    starRating: ' 7.9',
    imdbRating: 'IMDB 8.8',
    movieDuration: '2h 28m',
    movieYear: 2010,
    movieGenre: 'Action/Sci-fi',
  ),
  Movie(
    movieName: 'The Tomorrow War',
    subMovieName: '',
    movieDetails:
        'A family man is drafted to fight in a future war where the fate of humanity relies on his ability to confront the past.',
    imagePoster: 'assets/images/the-tomorrow-war-movie-poster.jpg',
    leadActorname: 'Chris Pratt',
    starRating: ' 5.6',
    imdbRating: 'IMDB 6.6',
    movieYear: 2021,
    movieDuration: '2h 20m',
    movieGenre: 'Action/Sci-fi',
  ),
  Movie(
    movieName: 'Joker',
    subMovieName: '',
    movieDetails:
        'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.',
    imagePoster: 'assets/images/joker.jpg',
    leadActorname: 'Joaquin Phoenix',
    starRating: ' 8.0',
    imdbRating: 'IMDb 8.4',
    movieDuration: '2h 2m',
    movieYear: 2019,
    movieGenre: 'Crime/Drama',
  ),
  Movie(
    movieName: 'Spider-Man',
    subMovieName: 'No Way Home 2021',
    movieDetails:
        'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.',
    imagePoster: 'assets/images/spider-man-no-way-home-movie-poster.jpg',
    leadActorname: 'Tom Holland',
    starRating: '9.1',
    imdbRating: 'IMDB 8.7',
    movieDuration: '2h 28m',
    movieYear: 2021,
    movieGenre: 'Action/Adventure',
  ),
  Movie(
    movieName: 'Nightbooks',
    subMovieName: '',
    movieDetails:
        'Alex, a boy obsessed with scary stories, is imprisoned by an evil young witch in her contemporary New York City apartment.',
    imagePoster: 'assets/images/nightbooks-movie-poster.jpg',
    leadActorname: 'Winslow Fegley',
    starRating: '5.8',
    imdbRating: 'IMDB 5.8',
    movieDuration: '1h 43m',
    movieYear: 2021,
    movieGenre: 'Fantasy/Mystery',
  ),
  Movie(
    movieName: 'Avengers',
    subMovieName: 'Endgame',
    movieDetails:
        'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos\' actions and restore balance to the universe.',
    imagePoster: 'assets/images/Avengers_end_games.jpg',
    leadActorname: 'Robert Downey Jr.',
    starRating: '8.9',
    imdbRating: 'IMDB 8.4',
    movieDuration: '3h 2m',
    movieYear: 2019,
    movieGenre: 'Action/Sci-fi',
  ),
  Movie(
    movieName: 'Sweet Girl',
    subMovieName: '',
    movieDetails:
        'A devastated husband vows to bring justice to the people responsible for his wife\'s death while protecting the only family he has left, his daughter.',
    imagePoster: 'assets/images/sweet-girl-movie-poster.jpg',
    leadActorname: 'Jason Momoa',
    starRating: '6.0',
    imdbRating: 'IMDB 5.5',
    movieDuration: '1h 50m',
    movieYear: 2021,
    movieGenre: 'Action thriller',
  ),
  Movie(
    movieName: 'Squared Love',
    subMovieName: 'Milosc do kwadratu',
    movieDetails:
        'A celebrity journalist and renowned womanizer starts to rethink his life choices after he falls for a mysterious model who leads a double life.',
    imagePoster: 'assets/images/milosc-do-kwadratu-polish-movie-poster.jpg',
    leadActorname: 'Adrianna Chlebicka',
    starRating: '4.9',
    imdbRating: 'IMDB 5.1',
    movieDuration: '2h 13m',
    movieYear: 2021,
    movieGenre: 'Romantic comedy',
  ),
  Movie(
    movieName: 'Army of the Dead',
    subMovieName: '',
    movieDetails:
        'Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble, venturing into the quarantine zone to pull off the greatest heist ever attempted.',
    imagePoster: 'assets/images/army-of-the-dead-movie-poster.jpg',
    leadActorname: 'Dave Bautista',
    starRating: '6.1',
    imdbRating: 'IMDb 5.7',
    movieDuration: '2h 28m',
    movieYear: 2021,
    movieGenre: 'Horror/Action',
  ),
  Movie(
    movieName: 'Without Remorse',
    subMovieName: '',
    movieDetails:
        'An elite Navy SEAL, goes on a path to avenge his wife\'s murder only to find himself inside of a larger conspiracy.',
    imagePoster: 'assets/images/without-remorse-movie-poster.jpg',
    leadActorname: 'Micheal B Jordan',
    starRating: '7.5',
    imdbRating: 'IMDB 5.8',
    movieDuration: '1h 49m',
    movieYear: 2021,
    movieGenre: 'Action/Thriller',
  ),
  Movie(
    movieName: 'Red Notice',
    subMovieName: '',
    movieDetails:
        'An Interpol agent tracks the world\'s most wanted art thief.',
    imagePoster: 'assets/images/red-notice-movie-poster.jpg',
    leadActorname: 'Dwayne Johnson',
    starRating: '6.1',
    imdbRating: 'IMDb 6.3',
    movieDuration: '1h 58m',
    movieYear: 2021,
    movieGenre: 'Action/Comedy',
  ),
  Movie(
    movieName: 'Afterlife of the Party',
    subMovieName: '',
    movieDetails:
        'A social butterfly who dies during her birthday week is given a second chance to right her wrongs on Earth.',
    imagePoster: 'assets/images/afterlife-of-the-party-movie-poster.jpg',
    leadActorname: 'Victoria Justice',
    starRating: '6.8',
    imdbRating: 'IMDB 5.8',
    movieDuration: '1h 49m',
    movieYear: 2021,
    movieGenre: 'Comedy',
  ),
  Movie(
    movieName: 'Love Hard',
    subMovieName: '',
    movieDetails:
        'An LA girl, unlucky in love, falls for an East Coast guy on a dating app and decides to surprise him for the holidays, only to discover that she\'s been catfished. This lighthearted romantic comedy chronicles her attempt to reel in love.',
    imagePoster: 'assets/images/love-hard-movie-poster.jpg',
    leadActorname: 'Nina Dobrev',
    starRating: '5.9',
    imdbRating: 'IMDB 6.3',
    movieDuration: '1h 45m',
    movieYear: 2021,
    movieGenre: 'Romance/Comedy',
  ),
  Movie(
    movieName: 'The Unforgivable',
    subMovieName: '',
    movieDetails:
        'A woman is released from prison after serving a sentence for a violent crime and re-enters a society that refuses to forgive her past.',
    imagePoster: 'assets/images/the-unforgivable-movie-poster.jpg',
    leadActorname: 'Sandra Bullock',
    starRating: '8.7',
    imdbRating: 'IMDB 7.2',
    movieDuration: '1h 52m',
    movieYear: 2021,
    movieGenre: 'Drama/Thriller',
  ),
  Movie(
    movieName: 'Kate',
    subMovieName: '',
    movieDetails:
        'A female assassin has 24 hours to get vengeance on her poisoner before she dies.',
    imagePoster: 'assets/images/kate-movie-poster.jpg',
    leadActorname: 'Mary Elizabeth Winstead',
    starRating: '5.7',
    imdbRating: 'IMDB 6.2',
    movieDuration: '1h 46m',
    movieYear: 2021,
    movieGenre: 'Action/Thriller',
  ),
  Movie(
    movieName: 'Outside the Wire',
    subMovieName: '',
    movieDetails:
        'In the near future, a drone pilot sent into a war zone finds himself paired with a top-secret android officer on a mission to stop a nuclear attack.',
    imagePoster: 'assets/images/outside-the-wire-movie-poster.jpg',
    leadActorname: 'Anthony Mackie',
    starRating: '5.9',
    imdbRating: 'IMDB 5.4',
    movieDuration: '1h 55m',
    movieYear: 2021,
    movieGenre: 'Action · Adventure',
  ),
  Movie(
    movieName: 'Don\'t Look Up',
    subMovieName: '',
    movieDetails:
        'Two low-level astronomers must go on a giant media tour to warn mankind of an approaching comet that will destroy planet Earth.etails',
    imagePoster: 'assets/images/dont-look-up-movie-poster.jpg',
    leadActorname: 'Leonardo DiCaprio',
    starRating: '8.2',
    imdbRating: 'IMDb 7.2',
    movieDuration: ' 2h 25m',
    movieYear: 2021,
    movieGenre: 'Comedy/Disaster',
  ),
  Movie(
    movieName: 'Black as Night',
    subMovieName: '',
    movieDetails:
        'A teenage girl with self-esteem issues finds confidence in the most unlikely way, by spending her summer battling vampires that prey on New Orleans\' disenfranchised with the help of her best friend, the boy she\'s always pined for, and a peculiar rich girl.',
    imagePoster: 'assets/images/black-as-night-movie-poster.jpg',
    leadActorname: 'Asjha Cooper',
    starRating: '4.1',
    imdbRating: 'IMDB 4.2',
    movieDuration: '1h 27m',
    movieYear: 2021,
    movieGenre: 'Horror',
  ),
];
