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

//trend movies states
class TrendMoviesLoadingState extends MovieStates {}
class TrendMoviesSuccessState extends MovieStates {}
class TrendMoviesErrorState extends MovieStates {}

//bottom nav states
class ChangeBottomNavState extends MovieStates {}

//on the air tv series states
class OnTheAirTvSeriesLoadingState extends MovieStates {}
class OnTheAirTvSeriesSuccessState extends MovieStates {}
class OnTheAirTvSeriesErrorState extends MovieStates {}

//top rated tv series states
class TopRatedTvSeriesLoadingState extends MovieStates {}
class TopRatedTvSeriesSuccessState extends MovieStates {}
class TopRatedTvSeriesErrorState extends MovieStates {}

//popular tv series states
class PopularTvSeriesLoadingState extends MovieStates {}
class PopularTvSeriesSuccessState extends MovieStates {}
class PopularTvSeriesErrorState extends MovieStates {}