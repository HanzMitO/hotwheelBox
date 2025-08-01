#' Counts the number of cars per brand
#'
#' This function counts how often vehicles of a specific car brand
#' appear in a list of model names. It checks
#' whether the model name matches an entry from the car_brands list.
#'
#' @param df A data frame with a column `model_name`.
#' @return A named integer vector with labels as names and number of occurrences.
#' @examples
#' data(example_hotwheels)
#' df <- example_hotwheels
#' df <- standardize_column_names(df)
#' count_brand_occurrences(df)
#' @export


count_brand_occurrences <- function(df) {
  df <- standardize_column_names(df)
  car_brands <- c(
    "AC", "AC PROPULSION", "ACURA", "A.D. TRAMONTANA", "ALFA ROMEO", "ALMAC", "ALTERNATIVE CARS", "AMUZA",
    "ANTEROS", "ARASH", "ARIEL", "ARRINERA", "ASL", "ASTERIO", "ASTON MARTIN", "AUDI", "BAC", "BAJAJ",
    "BEIJING AUTOMOBILE WORKS", "BENTLEY", "BMW", "BOLLORÉ", "BOLWELL", "BRILLIANCE / HUACHEN", "BRISTOL",
    "BRITISH LEYLAND", "BRM BUGGY", "BROOKE", "BUDDY", "BUFORI", "BUGATTI", "BUICK", "BYD", "CADILLAC",
    "CAPARO", "CARBONTECH", "CARICE", "CHANG'AN", "CHANGHE", "CHERY", "CHEVROLET", "CHEVRON", "CITROËN",
    "CHRYSLER", "COMMUTER CARS", "CONNAUGHT", "COVINI", "DACIA", "DAIHATSU", "DATSUN", "DE LA CHAPELLE",
    "DMC", "DIARDI", "DODGE", "DONKERVOORT", "DONGFENG", "DONTO", "DS AUTOMOBILES",
    "DYNASTI ELECTRIC CAR CORP.", "E-VADE", "EFFEDI", "EGY-TECH ENGINEERING", "ELECTRIC RACEABOUT", "ELFIN",
    "EMGRAND", "ENGLON", "ETERNITI", "ETOX", "EQUUS", "EXAGON", "FARALLI & MAZZANTI", "FAW", "FERRARI",
    "FIAT", "FISKER", "FODAY", "FORCE", "FORD", "FORD AUSTRALIA", "FORD GERMANY", "FORNASARI", "FRASER",
    "GAC GROUP", "GALPIN", "GEELY", "GENESIS", "GIBBS", "GILLET", "GINETTA", "GMC", "GONOW",
    "GREAT WALL / CHANGCHENG", "GREENTECH AUTOMOTIVE", "GRINNALL", "GTA MOTOR", "GUMPERT", "GURGEL",
    "HENNESSEY", "HINDUSTAN", "HOLDEN", "HONDA", "HONGQI", "HRADYESH", "HTT TECHNOLOGIES", "HULME", "HYUNDAI",
    "ICML", "IFR", "IRAN KHODRO", "IKCO", "IMPERIA", "INFINITI", "IVM", "INVICTA", "ISDERA", "ISUZU", "JAC",
    "JAGUAR", "JEEP", "JENSEN MOTORS", "JETCAR", "JONWAY", "JOSS", "KAIPAN", "KANTANKA", "KARMA",
    "KOENIGSEGG", "KORRES", "KIA", "KIAT", "KISH KHODRO", "KTM", "LADA", "LAMBORGHINI", "LANCIA",
    "LAND ROVER", "LANDWIND", "LARAKI", "LEBLANC", "LEITCH", "LEOPARD", "LEXUS", "LI-ION", "LIFAN",
    "LIGHTNING", "LINCOLN", "LISTER", "LOCAL MOTORS", "LOBINI", "LOTEC", "LOTUS CARS", "LUCRA CARS",
    "LUXGEN", "MAHINDRA", "MARUSSIA", "MARUTI SUZUKI", "MASERATI", "MASTRETTA", "MAZDA", "MCLAREN",
    "MERCEDES-BENZ", "MG", "MICRO", "MINI", "MITSUBISHI", "MITSUOKA", "MORGAN", "MULLEN", "MYCAR",
    "MYVI-PERODUA", "NISSAN", "NOBLE", "NOTA", "OLDSMOBILE", "OPEL", "OPTIMAL ENERGY", "ORCA", "OLTCIT",
    "PAGANI", "PANHARD", "PANOZ", "PERANA", "PERODUA", "PEUGEOT", "P.G.O.", "POLARSUN", "PLYMOUTH", "PORSCHE",
    "PROTO", "OULLIM", "PROTON", "PURITALIA", "QOROS", "QVALE", "RADICAL", "RELIANT", "RENAULT", "REVA",
    "RIMAC", "RINSPEED", "RODING", "ROEWE", "ROLLS-ROYCE", "ROSSIN-BERTIN", "ROSSION", "ROVER", "SAAB",
    "SALEEN", "SAIC-GM-WULING", "SAIPA", "SAKER", "SAMSUNG", "SAN", "SBARRO", "SCION", "SEAT",
    "SHANGHAI MAPLE", "SIN", "ŠKODA", "SMART", "SPADA VETTURE SPORT", "SPYKER", "SSANGYONG",
    "SSC NORTH AMERICA", "STREET & RACING TECHNOLOGY", "SUBARU", "SUZUKI", "TANOM", "TATA", "TAURO",
    "TAWON CAR", "TD CARS", "TESLA", "THAI RUNG", "TOYOTA", "TREKKA", "TRIDENT", "TRIUMPH", "TROLLER",
    "TRUMPCHI", "TUSHEK", "TVR", "TVS", "ULTIMA", "UMM", "UEV", "URI", "UAZ", "VAUXHALL MOTORS", "VECTOR",
    "VENCER", "VENIRAUTO", "VENTURI", "VEPR", "VOLKSWAGEN", "VOLVO", "VINFAST", "W MOTORS", "WALLYSCAR",
    "WESTFIELD", "WHEEGO", "WIESMANN", "XENIA", "YES!", "YOUABIAN PUMA", "ZASTAVA AUTOMOBILES",
    "ZENDER CARS", "ZENOS CARS", "ZENVO", "ZIL", "ZX AUTO"
  )

  model_names <- toupper(df[["model_name"]])

  brand_counts <- sapply(car_brands, function(brand) {
    pattern <- paste0("\\b", brand, "\\b")
    sum(grepl(pattern, model_names))
  })

  brand_counts <- brand_counts[brand_counts > 0]
  brand_counts <- sort(brand_counts, decreasing = TRUE)

  return(brand_counts)
}
