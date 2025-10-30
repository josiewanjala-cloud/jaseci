impl Patient.start {
    if not [root --> (`?hospital)] {
        next = root ++> hospital(self.hospname);
    } else {
        next = [root --> (`?hospital)];
    }
    visit next;
}

impl Patient.search_hosp {
    if [-->] {
        visit [-->];
    } else {
            check_validity(self.hospname);
            print(f"{self.hospname} is {check_validity(self.hospname)}");
            here ++> hospital(here.name);
            disengage;
    }
}