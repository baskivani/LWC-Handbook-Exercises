import { LightningElement } from 'lwc';

export default class A07sumWithGetter extends LightningElement {
    number1='0';
number2='0';
number1Changed(event) {
this.number1=event.target.value; // instead of target, details can be used.
}
number2Changed(event) {
this.number2=event.target.value;
} 
get sumOfNumber() {
//return parseInt(this.number1)+parseInt(this.number2);
return `${parseInt(this.number1)+parseInt(this.number2)}`; 
} 
}