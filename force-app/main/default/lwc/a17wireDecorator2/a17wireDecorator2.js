import { LightningElement, api, wire } from 'lwc';
import getAccountList from '@salesforce/apex/AccountSharingClass.getAccountList';
export default class A17WireDecorator2 extends LightningElement {
    @wire(getAccountList) accounts
}