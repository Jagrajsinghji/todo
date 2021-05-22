class APIRoutes {
  /// POST request
  /// params => userId,text
  ///
  static const BUG_REPORTING =
      "https://peaceful-stream-60089.herokuapp.com/reportBug";

  ///GET request
  ///params => q,apikey
  static const CHAT_BOT = "https://app.zenserp.com/api/v2/search";

  ///POST request
  ///body => {"subject":'' ,"description":'', "status":"open","reporter":"" ,"assignee": "" }
  static const CREATE_TASK =
      "https://sleepy-waters-51339.herokuapp.com/api/create";

  ///POST request
  ///body => {"unique_id": ""}
  static const DELETE_TASK =
      "https://sleepy-waters-51339.herokuapp.com/api/delete";

  ///POST request
  ///body => unique id ,{"subject":'' ,"description":'', "status":"open","reporter":"" ,"assignee": "" }
  static const MODIFY_TASK =
      "https://sleepy-waters-51339.herokuapp.com/api/update";

  ///GET request
  static const GET_TASK_LIST =
      "https://sleepy-waters-51339.herokuapp.com/api/list";

  ///POST
  ///body => username,password
  static const LOGIN =
      "https://food-ordering-backend-mysql.herokuapp.com/api/auth/signin";

  ///POST
  ///body => username,password ,email
  static const SIGN_UP =
      "https://food-ordering-backend-mysql.herokuapp.com/api/auth/signup";
}
