import { LightningElement,track } from 'lwc';

export default class A22eventParent5Component extends LightningElement {
    @track msg;
constructor() {
super(); 
this.template.addEventListener('mycustomevent', this.handleCustomEvent.bind(this));
}
handleCustomEvent(event) {
const textVal = event.detail;
this.msg = textVal;
}
}