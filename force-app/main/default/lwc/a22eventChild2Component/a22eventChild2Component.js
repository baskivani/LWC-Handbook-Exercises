import { LightningElement,track,api } from 'lwc';

export default class A22eventChild2Component extends LightningElement {
    @track Message;
@api
changeMessage(strString) {
this.Message = strString.toUpperCase();
}
}