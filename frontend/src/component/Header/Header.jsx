import { Button } from "@mui/material";
import { Link, useNavigate } from "react-router-dom";
import AccountMenu from ".././Customer/AccountMenu";
// import '../../App.css'
import ourlogo from '../../assets/our-logo.gif'

export default function(){
    const navigator = useNavigate();
    const user = JSON.parse(localStorage.getItem('loggedUser'));
    const token = localStorage.getItem('tokens');
    const role = user ? user.role[0]?.role:null;

    return(
        <div className="container">
            <Link to={"/"}>
            <div>
            <img src={ourlogo} type="image/svg+xml" alt="our-logo"  height="150" width="450"></img>
            </div>
            </Link>

            <div>
            {token && role == 'customer' ?  <Link to={"/customerdashboard"}><Button variant="text">View Applications</Button></Link>:null}
            {token && role == 'customer' ?  <Link to={"/favourites"}><Button variant="text">Favorite</Button></Link>:null}
            {token && role == 'owner' ?  <Link to={"/ownerapplications"}><Button variant="text">Manage Application</Button> </Link>:null}
            {token && role == 'owner' ? <Link to={"/properties"}> <Button variant="text">Manage property</Button> </Link>:null}
            {token && role == 'admin' ? <Link to={"/dashboard"}> <Button variant="text">Dashboard</Button> </Link>:null}
                        {/* {token && role == 'owner' ? <Link to={"/property-detail"}>  <Button variant="text">Property Details</Button> </Link>:null} */}
            {token && role == 'owner' ?  <Link to={"/create-property"} >  <Button variant="text">Create Property</Button> </Link>:null}
            {token ? <AccountMenu /> : <Link to={"/login"} >  <Button className = "btn" >Login</Button> </Link>}           
            </div>
        
            
        </div>
    )
}