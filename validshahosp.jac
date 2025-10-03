import from byllm {Model}
glob llm = Model(model_name="gemini/gemini-2.5-flash");

enum Validity{
    VALID,
    INVALID
}

def get_validity(hospname: str) -> Validity by llm();

with entry{
    name = "Kenyatta Hospital";
    result= get_validity(name);
   print(f"{result} detected for {name}");
}