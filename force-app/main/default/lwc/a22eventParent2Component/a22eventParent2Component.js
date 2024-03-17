import { LightningElement } from 'lwc';

export default class A22eventParent2Component extends LightningElement {
    handleChangeEvent(event){
        this.template.querySelector('c-a22event-child2-component').changeMessage(event.target.value);
         }
}