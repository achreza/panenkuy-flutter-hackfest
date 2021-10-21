// class ApiError {
//   String? _error;

//   ApiError({required String error}) {
//     this._error = error;
//   }

//   Future<String?> get error async => _error;
//   set error(String error) => _error = error;

//   ApiError.fromJson(Map<String, dynamic> json) {
//     _error = json['error'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['error'] = this._error;
//     return data;
//   }
// }