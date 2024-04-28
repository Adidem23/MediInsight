import React, { Component } from 'react';
import Carousel from 'react-bootstrap/Carousel';
import Card from 'react-bootstrap/Card';
import Img1 from './IMAGES/Report1.png'
import Img2 from './IMAGES/Report2.png'
import Img3 from './IMAGES/Report3.png'

class OurDoctors extends Component {

  render() {
    return (<div>
      <Carousel className="container" style={{ paddingLeft: 100, paddingRight: 100 }}>
        
        <Carousel.Item>
          <Card>
            <Card.Img variant="top" height="300" src={Img1} />
            <Card.Body>
              <Card.Title className="text-warning">Brain Tumor Report</Card.Title>
            </Card.Body>
          </Card>
        </Carousel.Item>

        <Carousel.Item>
          <Card>
            <Card.Img variant="top" height="300" src={Img2} />
            <Card.Body>
              <Card.Title className="text-warning">Brain Cancer Report</Card.Title>
            </Card.Body>
          </Card>
        </Carousel.Item>

        <Carousel.Item>
          <Card>
            <Card.Img variant="top" height="300" src={Img3} />
            <Card.Body>
              <Card.Title className="text-warning">Lung Cancer Report</Card.Title>
            </Card.Body>
          </Card>
        </Carousel.Item>

      </Carousel>
      <br />
      <br />

    </div>);
  }
}

export default OurDoctors;