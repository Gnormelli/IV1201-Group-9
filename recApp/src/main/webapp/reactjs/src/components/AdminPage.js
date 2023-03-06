import React, {useEffect} from 'react';
import {Box, Text, Flex, Stack, FormHelperText,} from '@chakra-ui/react';
import {Select} from "@chakra-ui/react";
import {NavbarComponent} from './NavbarComponent';
import ApiCall from "../ApiInterface/ApiCall";
import ApiPost from "../ApiInterface/ApiPost";
import {wait} from "@testing-library/user-event/dist/utils";

/**
 * Renders the Admin Page component.
 * Displays a list of users and their application status,
 * with the ability to update their status by selecting from a dropdown menu.
 * @returns {JSX.Element} - The Admin Page component.
 */
function AdminPage() {

    const [users, setUsers] = React.useState([]);
    const [errorMessage, setErrorMessage] = React.useState([]);


    useEffect(() => {
        ApiCall.getApplications()
            .then(response => {
                console.log("Row 22: Admin Page ")
                if (response.status === null){
                    console.log(response)
                    localStorage.removeItem("token");
                    // Redirect the user to the login page
                    window.location.replace("/");
                }
                console.log(response);
                setUsers(response);
            })
            .catch(errorCatch => {
                if (errorCatch === 403){
                    localStorage.removeItem("token");
                    setErrorMessage("Token has expired, redirecting to login page")
                    // Redirect the user to the login page
                    wait(2).then(r => window.location.replace("/") )
                } else{
                    setErrorMessage(errorCatch);
                    console.log(errorCatch)
                }

            });
    }, []);

    /**
     * Handles the change of status of a user's application.
     * @param {string} status - The new status to set for the application.
     * @param {number} id - The index of the user whose application is being updated.
     */
    const handleChange = (status, id) => {
        console.log("This is the id; " + id)

        const statusData = {
            status,
            id: id
        };

        console.log(`${status} was clicked`);
        console.log(`${id} was index`);

        ApiPost.setStatus(statusData)
            .then(response => {
                console.log(response);

            })
            .catch(error => {
                console.error(error);
            });
    }

    return (
        <>
            <NavbarComponent />
            <Box bg="gray.200" p={4} minHeight="100vh">
                <Text fontFamily="Roboto, sans-serif" fontWeight="bold" fontSize={24}>
                    WELCOME ADMIN!
                </Text>
                <Box mt={4}>
                    <Flex mt={2} alignItems="center">
                        <Text fontFamily="Roboto, sans-serif" fontWeight="bold" fontSize={16}>
                            Applications:
                        </Text>
                    </Flex>
                </Box>

                <Box p={4} >
                    {users.map((name, id) => (
                        <Flex
                            key={id}
                            p={2}
                            alignItems="center"
                            bg={id % 2 === 0 ? "white" : "gray.300"}

                            cursor="pointer"
                            justifyContent="space-between"
                            _hover={{ bg: "gray.200" }}
                            transition="background-color 0.2s ease-in-out"
                        >
                            <Text fontFamily="Roboto, sans-serif" mr={5} fontWeight="bold">{"First name: " + name.firstname + " "}</Text>
                            <Text fontFamily="Roboto, sans-serif" mr={5} fontWeight="bold">{"Surname: " + name.surname + " "}</Text>
                            <Text fontFamily="Roboto, sans-serif" mr={5} fontWeight="bold">{"Age: " +  name.age + " "}</Text>
                            <Stack ml="auto">
                                <Select variant='filled' placeholder={name.status} onChange={(status) => handleChange(status.target.value, name.id)}>
                                    <option value="Accepted" style={{ display: name.status === 'Accepted' ? 'none' : 'block' }}>Accepted</option>
                                    <option value="Rejected" style={{ display: name.status === 'Rejected' ? 'none' : 'block' }}>Rejected</option>
                                    <option value="Unhandled" style={{ display: name.status === 'Unhandled' ? 'none' : 'block' }}>Unhandled</option>
                                </Select>
                            </Stack>
                        </Flex>
                    ))}
                    {errorMessage && (
                        <Text color="red.500">{errorMessage}</Text>
                    )}
                </Box>
            </Box>
        </>
    );
}
    export default AdminPage;