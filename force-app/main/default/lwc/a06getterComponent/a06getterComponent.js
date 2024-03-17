import { LightningElement } from 'lwc';

export default class A06getterComponent extends LightningElement {
    title='';
message1='';
message2='';
titleChanged(event) {
this.title=event.target.value; // instead of target, details can be used.
}
message1Changed(event) {
this.message1=event.target.value;
}
message2Changed(event) {
this.message2=event.target.value;
}
get allMessage() {
return this.title + ' ' + this.message1 + ' ' + this.message2;
// return `${this.title} ${this.message1} ${this.message2}`; (Another return type writing)
} 
}