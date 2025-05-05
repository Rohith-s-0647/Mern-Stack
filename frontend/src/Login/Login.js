import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import '../Styling/Login.css';

const Login = () => {
    const navigate = useNavigate();
    const [username, setUserName] = useState('');
    const [password, setPassword] = useState('');

    const formsubmit = (e) => {
        e.preventDefault();
        if (username === 'admin' && password === 'admin') {
            navigate('/home');
        } else if (username === '' || password === '') {
            alert('Ensure that You have entered both Username and Password');
        } else {
            alert('Ensure that you have entered the correct Login credentials');
        }
    };

    return (
        <div className="login-container">
            <form onSubmit={formsubmit}>
                <p>Enter the Login Credentials<br></br>
                Happy Shopping</p>
                <label>Username</label>
                <input
                    type="text"
                    placeholder="Enter Your username"
                    onChange={(e) => setUserName(e.target.value)}
                />
                <label>Password</label>
                <input
                    type="password"
                    placeholder="Enter Your Password"
                    onChange={(e) => setPassword(e.target.value)}
                />
                <button>Login</button>
            </form>
        </div>
    );
};

export default Login;
