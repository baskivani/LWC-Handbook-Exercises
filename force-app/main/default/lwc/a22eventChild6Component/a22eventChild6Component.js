import { LightningElement } from 'lwc';

export default class A22eventChild6Component extends LightningElement {
    childHandler() {
        const evt = new CustomEvent('sendmessage', {detail: "This message is sent from child Component"});
        this.dispatchEvent(evt);
        }
}