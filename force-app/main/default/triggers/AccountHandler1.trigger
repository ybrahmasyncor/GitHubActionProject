trigger AccountHandler1 on Account (before insert) {
    for(Account a:Trigger.new){
        if(a.industry=='Banking'){
            a.ownership='Public';
        }
    }
}