import { MetodosDePagamento } from "./MetodosDePagamento";

export class Dinheiro implements MetodosDePagamento{
    metodo: string;
    taxa: number;

    constructor(metodo:string){
        this.metodo = metodo
        this.taxa = 0.9
    }

    getTaxa():number {
        return this.taxa
    }
}