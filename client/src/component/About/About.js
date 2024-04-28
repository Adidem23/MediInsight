import React, { Component } from 'react';
import Navber from '../Navber/Navber';
import { MDBContainer } from 'mdbreact';

import './About.css';
import Homeimage from '../Homeimage';
import Footer from '../Footer';

class About extends Component {

    render() {
        return (
            <div className="bg-dark">
                <Navber />
                <Homeimage />
                <br />

                <br />

                <h1 className="head text-white" align="center" style={{marginTop:'-40px'}}> About Us </h1>

                <MDBContainer>
                    <blockquote className="blockquote" style={{padding:'13px 14px'}}>
                        <p className="text-white" style={{margin:'auto',marginLeft:'100px'}}>
                            Welcome to MediInsight, your advanced medical imaging interpretation platform.
                        
                            At MediInsight, we leverage cutting-edge technology to provide comprehensive analysis and interpretation of medical images, ensuring accurate diagnosis and treatment planning.

                            With our intuitive interface and powerful algorithms, healthcare professionals can efficiently analyze various medical imaging modalities, including X-rays, CT scans.

                            Experience the next level of medical image interpretation with MediInsight. Join us in revolutionizing healthcare through innovative technology and insightful analysis.

                        </p>
                    </blockquote>


                </MDBContainer>

                <br>


                </br>
                <Footer />

            </div>
        );
    }
}

export default About;