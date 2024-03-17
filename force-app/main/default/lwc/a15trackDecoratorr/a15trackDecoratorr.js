import { LightningElement,track } from 'lwc';

export default class A15trackDecoratorr extends LightningElement {

    @track
MemberInfo={
name:'Your name',
age: 'Your age'
}
handleMemberName(event){
this.MemberInfo.name=event.target.value;
}
handleMemberAge(event){
this.MemberInfo.age=event.target.value;
}
}