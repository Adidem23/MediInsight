import React, { Component } from 'react';
import Card from 'react-bootstrap/Card';
import { MDBContainer } from 'mdbreact';
import HosImage from './IMAGES/Hospital.jpg';

class Homeimage extends Component {
   
    render() { 
        return (
        <div>
        <Card className="text-white">
        <Card.Img src={HosImage} alt="Card image" height="500" style={{opacity:"0.6"}}/>
                <Card.ImgOverlay>
                    <Card.Title>
                    <MDBContainer >
                        <h1 className="font-weight-bold" style={{color:'black',boxShadow:'2px 2px 2px 2px white' ,margin:'auto',display:'block',width:'fit-content',marginTop:'120px' ,fontSize:'90px'}}>Medical Imagery Report Generation </h1>
                        <br/>
                        <br/>
                    </MDBContainer>
                    </Card.Title>
                    
                    
                </Card.ImgOverlay>
        </Card>
        <br />
        <br/>
        
        </div> );
    }
}
 
export default Homeimage;