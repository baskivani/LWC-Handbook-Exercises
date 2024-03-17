import { LightningElement } from 'lwc';

export default class A22eventParent6Component extends LightningElement {
    message;
parentHandler(event) {
this.message = event.detail;
}
}