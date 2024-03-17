import { LightningElement,wire, api } from 'lwc';
import getInputMessage from '@salesforce/apex/MessagefromApex.getInputMessage';

export default class A16wireDecorator extends LightningElement {
    api
    inputMessage = 'World';
    @wire
    (getInputMessage) inputMessage;
    handleChange(event) {
    this.inputMessage = event.target.value;
    }
}