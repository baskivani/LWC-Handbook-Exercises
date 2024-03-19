import { LightningElement, api, track } from 'lwc';

export default class GetterOrnek1 extends LightningElement {

    firstName = "";
    lastName = "";
    fullName = "";

    handleFirstName(event){

this.firstName = event.target.value;
    }

     handleLastName(event){
         this.lastName = event.target.value;
     }
    @api
      get fullName(){
         return this.firstName + " " + this.lastName;
     }
     
     set fullName(value){
         this.fullName = value.toUpperCase();
     }
}