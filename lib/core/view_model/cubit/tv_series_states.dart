sealed class TvSeriesStates {}

//initial state
class TvSeriesInitialState extends TvSeriesStates {}

//on the air tv series states
class OnTheAirTvSeriesLoadingState extends TvSeriesStates {}
class OnTheAirTvSeriesSuccessState extends TvSeriesStates {}
class OnTheAirTvSeriesErrorState extends TvSeriesStates {}

//top rated tv series states
class TopRatedTvSeriesLoadingState extends TvSeriesStates {}
class TopRatedTvSeriesSuccessState extends TvSeriesStates {}
class TopRatedTvSeriesErrorState extends TvSeriesStates {}

//popular tv series states
class PopularTvSeriesLoadingState extends TvSeriesStates {}
class PopularTvSeriesSuccessState extends TvSeriesStates {}
class PopularTvSeriesErrorState extends TvSeriesStates {}