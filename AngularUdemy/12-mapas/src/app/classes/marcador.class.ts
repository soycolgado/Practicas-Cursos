export class Marcador {
    lat: number;
    lng: number;

    titulo: string = 'Sin Titulo';
    desc: string = 'Sin Descripcion';

    constructor(lat: number, lng: number){
        this.lat = lat;
        this.lng = lng;
    }
}