function doThrow(e) {
    throw e;
}

const url = "http://localhost:8081";
const ApiPost = {
    apiCall(params, object) {
        return fetch(url + params, {
        method: "POST", // HTTP method
        crossDomain: true,
            headers: {
                "Content-Type": "application/json",
                "Access-Control-Allow-Origin":  "http://127.0.0.1:3000",
                "Access-Control-Allow-Methods": "POST",
                "Access-Control-Allow-Headers":
                    "Origin, X-Requested-With, " +
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
        postData(object) {
            const postQueueEndpoint = "/postQueue";
            return ApiPost.apiCall(postQueueEndpoint, object).then((data) => data);
        }
    };

export default ApiPost;

