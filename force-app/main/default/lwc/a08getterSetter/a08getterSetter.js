import { LightningElement,api } from 'lwc';

export default class A08getterSetter extends LightningElement {
    message1;
outputMessage;
@api
get message(){
return this.message1; 
}
set message(val){
this.outputMessage = val.toUpperCase();
}
handleMessage(event){
this.message = event.target.value;
}
}