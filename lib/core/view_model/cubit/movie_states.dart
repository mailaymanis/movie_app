sealed class MovieStates {}

//initial state
class MovieInitialState extends MovieStates {}

//popular movies states
class PopularMoviesLoadingState extends MovieStates {}
class PopularMoviesSuccessState extends MovieStates {}
class PopularMoviesErrorState extends MovieStates {}

//top rated movies states
class TopRatedMoviesLoadingState extends MovieStates {}
class TopRatedMoviesSuccessState extends MovieStates {}
class TopRatedMoviesErrorState extends MovieStates {}

//upcoming movies states
class UpcomingMoviesLoadingState extends MovieStates {}
class UpcomingMoviesSuccessState extends MovieStates {}
class UpcomingMoviesErrorState extends MovieStates {}

//now playing movies states
class NowPlayingMoviesLoadingState extends MovieStates {}
class NowPlayingMoviesSuccessState extends MovieStates {}
class NowPlayingMoviesErrorState extends MovieStates {}

//people states
class PeopleLoadingState extends MovieStates {}
class PeopleSuccessState extends MovieStates {}
class PeopleErrorState extends MovieStates {}