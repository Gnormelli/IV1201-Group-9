function doThrow(e) {
  throw e;
}

const url = "http://localhost:8081";

const ApiCall = {
  apiCall(params,token) {
    return fetch(url + params, {
      method: "GET", // HTTP method
      crossDomain: true,
      headers: {
        // HTTP headers
        "Authorization" : token,
        "Content-Type": "application/json",
        "Access-Control-Request-Headers":
          "Origin, X-Requested-With, Content-Type, Accept",
      },
    })
      .then((response) =>
        response.status === 200
          ? response
          : doThrow(
              new Error(
                "Status was: " + response.statusText + " " + response.status + " " + params
              )
            )
      ).then((response) => {
          // if (response.data) {
            console.log(response);
            // localStorage.setItem("user", JSON.stringify(response.data));
          // }
          localStorage.setItem('token', response.jwtToken);
        })
      .then((response) => {
        console.log(response)
        return response.json()
      });
  },
  test() {
    const testEndPoint = "/api/v1/testEndpoint/anotherTestEndpoint";
    const token = "Bearer "+ localStorage.getItem("token");
    return ApiCall.apiCall(testEndPoint,token).then((data) => data);
  },
  getData() {
    const getQueueEndpoint = "/api/v1/auth/loginRoute";
    return ApiCall.apiCall(getQueueEndpoint).then((data) => data);
  }
};

export default ApiCall;
