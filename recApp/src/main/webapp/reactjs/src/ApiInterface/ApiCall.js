function doThrow(e) {
  throw e;
}

const url = "http://localhost:8081";

const ApiCall = {
  apiCall(params, object) {
    console.log("body: ")
    console.log(object);
    return fetch(url + params, {
      method: "GET", // HTTP method
      crossDomain: true,
      headers: {
        // HTTP headers
        "Content-Type": "application/json",
        "Access-Control-Request-Headers":
          "Origin, X-Requested-With, Content-Type, Accept",
      },
      body: JSON.stringify(object),
    })
      .then((response) =>
        response.status === 200
          ? response
          : doThrow(
              new Error(
                "Status was: " + response.statusText + " " + response.status + " " + params
              )
            )
      )
      .then((response) => {
        return response.json()

      });
  },
  getData(object) {
    const getQueueEndpoint = "/api/v1/auth/loginRoute";
    return ApiCall.apiCall(getQueueEndpoint,object).then((data) => data);
  }
};

export default ApiCall;
