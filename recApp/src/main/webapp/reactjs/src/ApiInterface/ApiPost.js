function doThrow(e) {
    throw e;
}

const url = "http://localhost:8081";
const ApiPost = {
    apiCall(params, object, token) {
        return fetch(url + params, {
        method: "POST", // HTTP method
        crossDomain: true,
        headers: {
            "Authorization" : token ,
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
            const token = localStorage.setItem("token", "");
            return ApiPost.apiCall(signUpEndpoint, object, ).then((data) => data);
        },
        logIn(object) {
            const logInEndpoint = "/api/v1/auth/login";
            const token = localStorage.getItem("token");
            return ApiPost.apiCall(logInEndpoint, object, token).then((data) => data);
        }
    };

export default ApiPost;

