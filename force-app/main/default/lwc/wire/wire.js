import { LightningElement,track,wire } from 'lwc';
import searchContact from "@salesforce/apex/ContactController.getContacts";

export default class Wire extends LightningElement {
    @track searchKey = ''
    @wire(searchContact,{serachKey:'$searchKey'})
    contacts;
    handleChange(event){
        this.searchKey = event.target.value;

    }
}