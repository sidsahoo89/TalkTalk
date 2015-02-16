public with sharing class TesterController {
    public TesterController() {
        String[] countries = new String[]{'Philippines','USA','India','Germany','Sidharthland','Other countries...' };
        this.countryOptions = new SelectOption[]{};
        
        for (String c: countries) {
            this.countryOptions.add(new SelectOption(c,c));
        }
    }
    public SelectOption[] countryOptions { //this is where we're going to pull the list
        public get;
        private set;
    }
}