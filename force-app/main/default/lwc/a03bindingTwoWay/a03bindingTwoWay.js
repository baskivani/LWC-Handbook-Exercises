import { LightningElement,track } from 'lwc';

export default class A03bindingTwoWay extends LightningElement {
   @ track message1;
@track message2;
messageHandler1(event){
this.message1= event.target.value;
}
messageHandler2(event){
this.message2= event.target.value;
}
}
