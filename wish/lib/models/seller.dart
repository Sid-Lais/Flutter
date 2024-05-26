class Seller {
  late String _userId;
  late String _password;
  late String _appId;

  Seller() {}

  Seller.takeInput(
      {required String userId,
      required String password,
      required String appId}) {
    this._userId = userId;
    this._password = password;
    this._appId = appId;
  }

  get userId => this._userId;

  set userId(value) => this._userId = value;

  get password => this._password;

  set password(value) => this._password = value;

  get appId => this._appId;

  set appId(value) => this._appId = value;
}
