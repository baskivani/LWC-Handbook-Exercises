import { LightningElement } from 'lwc';

export default class A05conditionalRendering2 extends LightningElement {
    DetailsVisibility = true;
    handleChange(event) {
    this.DetailsVisibility = event.target.checked;
    }

}