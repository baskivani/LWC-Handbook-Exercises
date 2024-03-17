import { LightningElement } from 'lwc';

export default class A22eventChild3Component extends LightningElement {
    searchKey;
handleChange(event){
this.searchKey=event.target.value;
//Create Event
const searchEvent= new CustomEvent("getsearchvalue", {detail: this.searchKey});
// Dispatches the event
this.dispatchEvent(searchEvent);
}
}