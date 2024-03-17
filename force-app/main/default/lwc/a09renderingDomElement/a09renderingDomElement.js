import { LightningElement } from 'lwc';

export default class A09renderingDomElement extends LightningElement {

    display=true;
firstName;
lastName;
studentNumber;
firstNameHandler(event){
this.firstName=event.target.value;
}
lastNameHandler(event){
this.lastName=event.target.value;
}
studentNumberHandler(event){
this.studentNumber=event.target.value;
}
searchHandler(){
this.display=false;
}
}