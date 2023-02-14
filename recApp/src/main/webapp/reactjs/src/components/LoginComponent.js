import React, { useState }  from 'react';
import {Input, Button, Stack, Box, FormControl, FormHelperText, Avatar} from "@chakra-ui/react";
import { Link } from '@chakra-ui/react'
import { Text } from '@chakra-ui/react'
import { Heading } from '@chakra-ui/react'
import {useNavigation} from "react-router-dom";
import cors from 'cors';

function LoginComponent() {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [error, setError] = useState('')

    const handleSubmit = (e) => {
        e.preventDefault()

        if (!email || !password) {
            setError('Please enter email and password')
            return
        }
        setError('')

        try {
            cors({ origin: 'http://localhost:3000' });

            fetch('http://localhost:8081/api/v1/auth/login', {
                method: 'POST',
                crossDomain: true,
                headers: {
                    "Content-Type": "application/json",
                    "Access-Control-Allow-Origin":  "http://localhost:3000",
                    "Access-Control-Allow-Methods": "POST",
                    "Access-Control-Request-Headers":
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
                <Heading marginTop={3} >Sign in</Heading>
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
                    {error && (
                        <FormHelperText color="red.500">{error}</FormHelperText>
                    )}
                </FormControl>

                <Button type="submit" bg={"lightblue"}>Login</Button>
            </Stack>
            <center >
            <Text marginTop={5}>
                Are you new?{' '}
                <Link color='teal.500' href="/signup">
                    create account
                </Link>
            </Text>
                </center>

        </Box>

    )
}

export default LoginComponent;
