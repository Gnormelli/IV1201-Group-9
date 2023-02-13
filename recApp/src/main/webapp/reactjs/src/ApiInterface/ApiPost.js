function doThrow(e) {
    throw e;
}

const url = "http://localhost:8081";
const ApiPost = {
    apiCall(params, object) {
        console.log(url+params)
        console.log("body: ")
        console.log(object)
        return fetch(url + params, {
        method: "POST", // HTTP method
        crossDomain: true,
        headers: {
            "Content-Type": "application/json",
            "Access-Control-Request-Headers":
                "Authorization , Origin, X-Requested-With, " +
                "Content-Type, Accept",
            },

        body: JSON.stringify(object),
        })
            .then((response) =>
            response.status === 200
                ? response
                : doThrow(
                    new Error(
                    "Status was: " + response.statusText + " " + response.status
                    )
                )
            )
            .then((response) => {
                    return response.json()
            });
        },
        signUp(object) {
            const signUpEndpoint = "/api/v1/auth/signup";
            console.log("body: ")
            console.log(object)
            return ApiPost.apiCall(signUpEndpoint, object).then((data) => data);
        }
    };

export default ApiPost;

