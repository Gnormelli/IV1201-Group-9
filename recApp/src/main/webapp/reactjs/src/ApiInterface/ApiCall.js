function doThrow(e) {
  throw e;
}

const url = "http://localhost:8081";

const ApiCall = {
  apiCall(params, token) {
    return fetch(url + params, {
      method: "GET", // HTTP method
      crossDomain: true,
      headers: {
        // HTTP headers
        "Authorization" : token,
        "Content-Type": "application/json",
        "Access-Control-Allow-Headers":
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
        return response.json()

      });
  },
  getData() {
    const getQueueEndpoint = "/getQueue";
    return ApiCall.apiCall(getQueueEndpoint).then((data) => data);
  }
};

export default ApiCall;
