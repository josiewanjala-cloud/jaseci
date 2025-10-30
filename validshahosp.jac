
"""A HOSPITAL SEARCH"""
#Program to check SHA valid Hospitals
#Will improve it as i get a better understanding of Jac

import from byllm.llm { Model }

 glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

def check_validity(hospname: str) -> str by llm();

walker Patient {
    has hospname: str;
    
    can start with `root entry;
    can search_hosp with hospital entry;
}

node hospital {
    has name: str;
}

with entry:__main__ {
    root spawn Patient("Kenyatta Hospital");
    root spawn Patient("Mbagathi Hospital");
    root spawn Patient("Mama Lucy");
    root spawn Patient("Nairobi Hospital");
    root spawn Patient("Test Hospital");
}

