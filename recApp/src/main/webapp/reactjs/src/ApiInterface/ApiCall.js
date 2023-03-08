function doThrow(e) {
  throw e;
}


const url = "http://localhost:8080";

/**
 * Makes an API call using HTTP GET method with the provided parameters and token
 * @function
 * @memberof ApiCall
 * @param {string} params - The API endpoint and parameters
 * @param {string} token - The user token for authentication
 * @returns {Promise} A Promise that resolves to the API response data
 * @throws {Error} If the API response status is not 200
 */

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
      // .then((response) =>
      //   response.status === 200
      //     ? response
      //     : doThrow(
      //         new Error(
      //           "Status was: " + response.statusText + " " + response.status + " " + params
      //         )
      //       )
      // )
      .then((response) => {
        console.log("Row 41: ApiCall")
        console.log(response)
            if (response.status === 403) {
              return response
            }
        console.log(response)
        return response.json()
        // if (response.status === 200) {
        //   return response.json();
        // } else {
        //   throw new Error("Status was: " + response.statusText + " " + response.status);
        // }
      });
  },
  test() {
    const testEndPoint = "/api/v1/testEndpoint/anotherTestEndpoint";
    const token = "Bearer "+ localStorage.getItem("token");
    return ApiCall.apiCall(testEndPoint,token).then((data) => data);
  },
  getApplications() {
    const getQueueEndpoint = "/api/v1/recruiters/applicants";
    const token = "Bearer "+ localStorage.getItem("token");
    return ApiCall.apiCall(getQueueEndpoint, token).then((data) => data);
  },
  getCompetence() {
    const getQueueEndpoint = "/api/v1/applicants/competences";
    const token = "Bearer "+ localStorage.getItem("token");
    return ApiCall.apiCall(getQueueEndpoint, token).then((data) => data);
  }
};

export default ApiCall;
