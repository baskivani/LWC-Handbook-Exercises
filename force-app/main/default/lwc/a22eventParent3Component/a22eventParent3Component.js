import { LightningElement,track } from 'lwc';

export default class A22eventParent3Component extends LightningElement {
    @track searchValue;
handleSearchValue(event){
this.searchValue= event.detail;
}
}