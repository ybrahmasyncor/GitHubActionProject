import { LightningElement, api } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
import Type_FIELD from '@salesforce/schema/Account.Type';
import AccountNumber_FIELD from '@salesforce/schema/Account.AccountNumber';
import ACTIVE_FIELD from '@salesforce/schema/Account.Active__c';

export default class LightningRecordFormEditExampleLWC extends LightningElement {
    @api recordId;
    @api objectApiName;
    fields = [NAME_FIELD, RATING_FIELD,REVENUE_FIELD, INDUSTRY_FIELD,PHONE_FIELD, AccountNumber_FIELD,Type_FIELD,ACTIVE_FIELD];
    handleSubmit(event){
        //you can change values from here
        //const fields = event.detail.fields;
        //fields.Name = 'My Custom  Name'; // modify a field
        console.log('Account detail : ',event.detail.fields);
        console.log('Account name : ',event.detail.fields.Name);
    }
}