import React, { useState }  from 'react';
import {Input, Button, Stack, Box, FormControl, FormHelperText, Avatar} from "@chakra-ui/react";
import { Link } from '@chakra-ui/react'
import { Text } from '@chakra-ui/react'
import { Heading } from '@chakra-ui/react'
import ApiPost from "../ApiInterface/ApiPost";

function SignupPage() {
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

        if (password !== passwordConfirmation) {
            setError('Password and confirm password should be same');
            return
        }
        setError('')

        if (!password) {
            setError('Password should not be empty');
            return
        }
        setError('')


        const signUpData = {
            email,
            password
        };

        ApiPost.signUp(signUpData)
            .then(response => {
                localStorage.setItem('token', response.jwtToken);
            })
            .catch(error => {
                console.error(error);
            });

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
                </FormControl>
                {error && (
                    <FormHelperText color="red.500">{error}</FormHelperText>
                )}
                <Button type="submit" bg={"lightblue"}>Sign up</Button>
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


export default SignupPage;
