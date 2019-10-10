public class Multi_Select_Example {
    public List<String> fields 		{set;get;}
    public List<SelectOption> left 	{set;get;}
    public List<SelectOption> right	{set;get;}
    public Set<String> notSelected	{set;get;}
    public Set<String> selected		{set;get;}
    public List<String > add		{set;get;}
    public List<String> rem			{set;get;}
    public Multi_Select_Example(){
        left =new List<SelectOption>();
        right=new List<SelectOption>();
        notSelected=new Set<String>();
        selected =new Set<String>();
        add=new List<String>();
        rem=new List<String>();
        SelectOption op=new SelectOption('none','-None-');
        left.add(op);
        right.add(op);
        fields =new List<String>{'Name','Industry','Phone','Rating','Ownership'};   
        notSelected.addAll(fields);
        getOptions();
    }
    public void getOptions(){
         left.clear();
         right.clear();
        SelectOption op=new SelectOption('none','none');
        if(notSelected.size()>0){
            for(String s1:notSelected){
                SelectOption op1=new SelectOption(s1,s1);
                left.add(op1);
            }
        }else{
            left.add(op);
        }
        if(selected.size()>0){
            for(String s2:selected){
                SelectOption op2=new SelectOption(s2,s2);
                right.add(op2);
            }
        }else{
            right.add(op);
        }
    }
    public void addEle(){  
      notSelected.removeAll(add);
      selected.addAll(add);
        getOptions();
    }
    public void removeEle(){
       selected.removeAll(rem);
       notSelected.addAll(rem);
          getOptions();
    }
}