public class DynamicSoql {
    public List<String> fieldName         {set;get;}
    public List<SelectOption> notSelectedOptions{set;get;} // PicKListOptions for NotSelectedFields
    public List<SelectOption> selectedOptions   {set;get;} // PicKListOptions for SelectedFields
    public Set<String> selectedFields       {Set;get;} // Set of SelectedField names
    public Set<String> notSelectedFields     {set;get;} // Set of NotselectedField Names
    public List<String> selected        {set;get;} // List of Options that are selected
    public List<String> removed          {Set;get;}
    public List<Account> result          {Set;get;} 
    public String query             {set;get;}
    public Boolean flag			{set;get;}
    public DynamicSoql(){
        /* FieldNames contains all the names of the fields on which we want to create 
         * multiselecte
         */
        fieldName=new List<String>{'Name','Phone','Industry','Type','OwnerShip'};
        notSelectedFields=new Set<String>();
        selectedFields=new Set<String>();
        selected=new List<String>();
        removed=new List<string>();
        notSelectedOptions=new List<SelectOption>();
        selectedOptions=new List<SelectOption>();
        /* add all the fieldnames to notSelectedFields 
         * Intially all the fields are in notSelectedFields 
    */
        notSelectedFields.addAll(fieldName);
        getOptions();
    }
    public void getOptions(){
        /* Remvoe all the options from both the picklist notselectedOptions and SelectedOptions */
        notSelectedOptions.clear();
        selectedOptions.clear();
        SelectOption n=new SelectOption('none','-None-');
        /* check if there are any elements in the notselectedFields */
        if(notSelectedFields.size() >0){
           /* Take one by one fieldName from the notSelectedList and create PickList option */
            for(String s1: notSelectedFields){
                SelectOption op1=new SelectOption(s1,s1);
                /* Then add the options to notSelectedOptions */
                 notSelectedOptions.add(op1);
            }
        }else{
            /* If there are no elements add none option to the notSelectedOption */
            notSelectedOptions.add(n);
        }
        /* Now check are there any elements in selectedFields */
        if(selectedFields.size() >0){
            /* Take one by one field and create picklist optionss */
            for(String s2: selectedFields){
                SelectOption op2=new SelectOption(s2,s2);
                selectedOptions.add(op2);
            }
        }else{
            /* if there no fields then add none */
            selectedOptions.add(n);
        }
    }
    public void add(){
        /* remove all selected fieldNames  from notSelectedFieldNames
         * and add them SelectedFieldNames */ 
        notSelectedFields.removeAll(selected);
        selectedFields.addAll(selected);
        getOptions();
    }
    public void remove(){
        /* remove all the selected fieldNames from selectedFieldNames and add them to 
         * notSelectedFieldNames */
        selectedFields.removeAll(removed);
        notSelectedFields.addAll(removed);
        getOptions();
    }
    public void getData(){
        query='select id';
        // assume you have selected name,phone 
        // select id
        // select id,name 
        // select id,name,phone
        for(String s: selectedFields){
            query=query+','+s;
        }
        query=query+' from Account';
        /* All the fields which  are set of SelectedFields are add to fieldNames */
        fieldName.clear();
        fieldName.addAll(selectedFields);
        result=Database.query(query);
    }
}