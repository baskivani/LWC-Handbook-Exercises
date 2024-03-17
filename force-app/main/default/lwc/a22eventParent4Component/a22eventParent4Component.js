import { LightningElement,track } from 'lwc';

export default class A22eventParent4Component extends LightningElement {
    @track msg;
handleCustomEvent(event) {
const textVal = event.detail;
this.msg = textVal;
}
}