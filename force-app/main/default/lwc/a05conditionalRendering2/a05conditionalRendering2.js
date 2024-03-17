import { LightningElement } from 'lwc';

export default class A05conditionalRendering2 extends LightningElement {
    etailsVisibility = false;
    handleChange(event) {
    this.DetailsVisibility = event.target.checked;
    }

}