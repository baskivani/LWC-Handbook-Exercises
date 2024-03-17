import { LightningElement } from 'lwc';

export default class A21student extends LightningElement {
    display=true;
studentNumber='';
StudentFirstName='';
StudentLastName='';
handleStudentNumber(event){
this.studentNumber=event.target.value;
}
handleFirstName(event){
this.StudentFirstName=event.target.value;
}
handleLastName(event){
this.StudentLastName=event.target.value;
}
searchHandler(){
this.display=false;
}
}