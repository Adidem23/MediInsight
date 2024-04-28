import React, { Component } from 'react';
import OurDoctors from '../OurDoctors'
import Navber from './PatientNavbar';
import '../Home/Home.css';
import HomeQuote from '../HomeQuote';
import Homeimage from '../Homeimage';
import Footer from '../Footer';
import Mission from '../Mission';

class PatHome extends Component {
    render() {
        return (
            <div className="bg-dark">
                <Navber />
                <Homeimage/>
                <br>
                </br>
                <br>
                </br>
                <h1 className="head text-white" align="center"> Our Doctors </h1>
                <br>

                </br>
                <br/>
                <br/>
                <OurDoctors/>
                <br/>
                <br/>
                <Footer/>
            </div>
        );
    }
}

export default PatHome;