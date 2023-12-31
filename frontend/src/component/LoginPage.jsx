import  React,{useState,useEffect} from 'react';
import Avatar from '@mui/material/Avatar';
import Button from '@mui/material/Button';
import CssBaseline from '@mui/material/CssBaseline';
import TextField from '@mui/material/TextField';

import Grid from '@mui/material/Grid';
import Box from '@mui/material/Box';
import LockOutlinedIcon from '@mui/icons-material/LockOutlined';
import Typography from '@mui/material/Typography';
import Container from '@mui/material/Container';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { Link, useNavigate } from 'react-router-dom';
import {useDispatch, useSelector} from 'react-redux';
import { userActions } from './Redux/UserSlice';
import { instance } from '../index';
import {setLoggedIn} from '../Redux/loggedUserSlice'
import axios from 'axios'

const theme = createTheme();

export default function() {
  const[isLoggedIn,setIsLoggedIn] = useState(false)
  const[loginError,setLoginError] = useState(false)
  const dipatch = useDispatch();

useEffect(()=>{
  if(localStorage.getItem("tokens") != null){setIsLoggedIn(true)
}},[])
  const state = useSelector((state)=> state)
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const handleSubmit = (event) => {
    event.preventDefault();
    const data = new FormData(event.currentTarget);
    loginRequest(data);

  };

  const loginRequest = (data)=>{
    const loginRequestObj = {
      "email" : data.get('email'),
      "password" : data.get('password')
    }
      instance().post("/uaa/login",loginRequestObj)
            .then((response)=>{
                  localStorage.setItem("tokens",JSON.stringify(response.data))
                  instance().get(`/users/${data.get('email')}`)
                  .then((response)=> {
                      localStorage.setItem("loggedUser",JSON.stringify(response.data))
                      dispatch(setLoggedIn(true))
                      navigate("/")
                      })
             })
            .catch((error) =>{
                setLoginError(true);
            });
  }

  return (
    <>
    { 
    <ThemeProvider theme={theme}>
      <Container component="main" maxWidth="xs">
        <CssBaseline />
        <Box
          sx={{
            marginTop: 8,
            display: "flex",
            flexDirection: "column",
            alignItems: "center",
          }}
        >
          <Avatar sx={{ m: 1, bgcolor: "#304EF2" }}>
            <LockOutlinedIcon />
          </Avatar>
          <Typography component="h1" variant="h5">
            Sign In
          </Typography>
          { loginError && <p style={{color : 'red'}}>Username or Password incorrect !</p>}
          <Box component="form" onSubmit={handleSubmit} noValidate sx={{ mt: 1 }}>
            <TextField
              margin="normal"
              required
              fullWidth
              id="email"
              label="Email Address"
              name="email"
              autoComplete="email"
              autoFocus
            /> 
            <TextField
              margin="normal"
              required
              fullWidth
              name="password"
              label="Password"
              type="password"
              id="password"
              autoComplete="current-password"
            />
          
            <Button
              type="submit"
              fullWidth
              variant="contained"
              sx={{ mt: 3, mb: 2 }}
            >
              Sign In
            </Button>
            <Grid container>
            <Grid item xs>
                <Link to="/forgotpassword" variant="body2">
                  Forgot password?
                </Link>
              </Grid>
              <Grid item>
                <Link to="/signup" variant="body2">
                  {"Don't have an account? Sign Up"}
                </Link>
              </Grid>
            </Grid>
          </Box>
        </Box>
      </Container>
    </ThemeProvider>
    }
    </>
  );
}
