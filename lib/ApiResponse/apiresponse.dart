class ApiResponse {

  Object? _data; 
  Object? _apiError;

  Future<Object?> get Data async => _data;
  set Data(Object data) => _data = data;

  Object get ApiError => _apiError as Object;
  set ApiError(Object error) => _apiError = error;
}