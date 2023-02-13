import React, { useState }  from 'react';
import {Input, Button, Stack, Box, FormControl, FormHelperText, Avatar} from "@chakra-ui/react";
import { Link } from '@chakra-ui/react'
import { Text } from '@chakra-ui/react'
import { Heading } from '@chakra-ui/react'
import ApiPost from "../ApiInterface/ApiPost";

function SignupComponent() {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [passwordConfirmation, setPasswordConfirmation] = useState("");
    const [error, setError] = useState('')

    const handleSubmit = (e) => {
        e.preventDefault()

        if (!email || !password) {
            setError('Please enter email and password')
            return
        }
        setError('')

        try {
        fetch('http://localhost:8081/api/v1/auth/signup', {
            method: 'POST',
            crossDomain: true,
            headers: {
                "Content-Type": "application/json",
                "Access-Control-Allow-Origin":  "http://127.0.0.1:3000/signup",
                "Access-Control-Allow-Methods": "POST",
                "Access-Control-Allow-Headers":
                    "Origin, X-Requested-With, " +
                    "Content-Type, Accept",
            },
            body: JSON.stringify({ email, password }),
        }).then(response => {
            if (!response.ok) {
                throw new Error(response.statusText);
            }
            return response.json();
        }).then(data => {
            console.log(data);
        }).catch(error => {
            setError(error.message || 'An error occurred, please try again later');
        });

    } catch (error) {
        setError(error.message || 'An error occurred, please try again later');
    }

}


    return (
        <Box
            as="form"
            onSubmit={handleSubmit}
            backgroundColor="white"
            p={8}
            borderWidth={1}
            borderRadius={4}
            boxShadow="xl"
            width="100%"
            maxWidth="400px"
            margin="0 auto"
            marginTop={150}
            rounded={18}
        >
            <Stack spacing={6}>
                <center>
                    <Avatar bg='teal.500' />
                    <Heading marginTop={3} >Sign up</Heading>
                </center>
                <FormControl>
                    <Input
                        type="email"
                        placeholder="Email"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}
                    />
                </FormControl>
                <FormControl>
                    <Input
                        type="password"
                        placeholder="Password"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                    />
                </FormControl>
                <FormControl>
                    <Input
                        type="password"
                        placeholder="Confirm password"
                        value={passwordConfirmation}
                        onChange={(e) => setPasswordConfirmation(e.target.value)}
                    />
                    {error && (
                        <FormHelperText color="red.500">{error}</FormHelperText>
                    )}
                </FormControl>

                <Button type="submit" bg={"lightblue"}>Login</Button>
            </Stack>
            <center >
                <Text marginTop={5}>
                    Already have an account?{' '}
                    <Link color='teal.500' href='/'>
                        Sign in
                    </Link>
                </Text>
            </center>

        </Box>
    )
}


export default SignupComponent;
