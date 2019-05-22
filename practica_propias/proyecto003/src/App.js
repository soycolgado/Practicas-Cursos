import React, { Component } from 'react';

class App extends Component {
  constructor(props){
    super(props);
    this.presion = this.presion.bind(this);
  }
  render() {
    return (
      <div>
        <form onSubmit = {this.presion}>
          <p>Ingrese el primer valor:
            <input type="number" name="valor1"/>
          </p>
          <p>
            Ingrese el segundo numero:
            <input type="number" name="valor2" />
          </p>
          <p>
            <input type="submit" value="Sumar"/>
          </p>
        </form>
      </div>
    );
  }
  presion(e){
    e.preventDefault();
    const v1 = parseInt(e.target.valor1.value, 10);
    const v2 = parseInt(e.target.valor2.value, 10);
    const suma = v1 + v2;
    alert(suma);
  }
}

export default App;