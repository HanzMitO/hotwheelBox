test_that("list_unique_models returns all unique model names sorted", {
  library(readr)

  df <- read_csv("fixtures/sample.csv")
  expected <- c(
    "'15 Mazda MX-5 Miata", "'16 Bugatti Chiron", "'17 Ford GT", "'49 Drag Merc", "'55 Chevy",
    "'59 Chevy Impala", "'60s Fiat 500D Modificado", "'62 Corvette", "'63 Chevy Nova & '88 Chevy Silverado 3500",
    "'64 Chevy Chevelle SS", "'66 Buick Riviera", "'67 Camaro", "'67 Ford Mustang Coupe", "'67 Mustang",
    "'69 Corvette Racer", "'69 Mercury Cougar Eliminator", "'69 Mercury Cyclone", "'71 Dodge Challenger",
    "'71 Mustang Funny Car", "'73 Honda Civic Custom", "'73 Plymouth Duster & Second Story Lorry",
    "'76 Greenwood Corvette", "'81 Toyota Starlet KP61", "'85 Honda City Turbo II", "'89 Mercedes-Benz 560 SEC AMG",
    "'90 Honda Civic EF", "'91 Mazda MX-5 Miata", "'96 Nissan 180SX Type X", "'96 Nissan 180SX Type X & Nissan SilEighty",
    "'96 Porsche Carrera", "'98 Subaru Impreza 22B-STi Version", "1956 Corvette", "1966 Triumph Tiger 100",
    "1968 Mazda Cosmo Sport", "1969 Ford Mustang Boss 302", "1985 Honda CR-X", "2016 Ford GT Race",
    "2018 Bentley Continental GT3", "2020 Ford Mustang Shelby GT500", "2020 Koenigsegg Jesko", "Acura NSX",
    "Aston Martin 1963 DB5", "Aston Martin DB4GT High-Speed Edition", "Audi 90 Quattro",
    "BMW 320 Group 5 & 2001 BMW M3 GTR", "BMW 507", "BMW M3 Wagon", "Back To The Future Time Machine - Hover Mode",
    "Birthday Burner", "Bone Shaker", "Bugatti Bolide", "Bumblebee", "Cadillac Project GTP Hypercar",
    "Chevroletor", "Chevy El Camino", "Corvette C6", "Custom '01 Acura Integra GSR", "Custom '68 Camaro",
    "Custom Cadillac Fleetwood", "DMC Delorean", "Datsun 240Z", "De Tomaso Pantera Gruppo 4",
    "Dodge Viper SRT10 ACR", "Fish'd & Chip'd", "Ford GT40", "Ford Mustang 5-Pack", "Ford Mustang Dark Horse",
    "Ford Mustang GTD", "Ford Transit Supervan", "Group C Fantasy", "Grumobile",
    "HW Ultimate T-Rex Transporter", "Hirohata Merc", "Hiway Hauler", "Honda Super Cub Custom",
    "Hot Wheels Ford Transit Connect", "Hot Wheels Pemium Collectors Set", "Ice Charger", "Jaguar MK1",
    "K.I.T.T.", "Knight Draggin'", "Koenigsegg Gemera", "LB-Silhouette Works GT Nissan 35GT-RR Ver.2",
    "Lamborghini Huracán Sterrato", "Lamborghini Sesto Elemento", "Mattel Dream Mobile", "Mazda 323 GTR",
    "Mazda 787B", "McLaren P1", "Mercedes-Benz 300 SL & '55 Mercedes-Benz Blaues Wunder", "Mercedes-Benz 500 E",
    "Meyers Manx", "Minecart", "Monster High Ghoul Mobile", "Mopar 5-Pack", "Nissan Silvia (S15)",
    "Nissan Skyline 2000GT-R LBWK", "Nissan Skyline 2000GT-R LBWK & Fleet Flyer", "Nissan Skyline GT-R (BCNR33)",
    "Nissan Skyline GT-R (BNR32)", "Nissan Skyline HT 2000GT-X", "Nissan Skyline RS (KDR30)", "Optimus Prime",
    "Oracle Red Bull Racing", "Pagani Utopia", "Pagani Zonda R", "Pedal Driver", "Pontiac Aztek Custom",
    "Porsche 911 Carrera", "Porsche 911 Carrera Clip", "Porsche 911 GT3", "Porsche 911 Rallye",
    "Porsche 928S Safari", "Proton Saga", "Purple Passion", "Shelby Cobra 427 S/C", "Snoopy", "Speed Bump",
    "Standard Kart", "Tail Dragger", "Time Attaxi", "Toyota GR86 Cup", "Toyota Supra", "Twin Mill Gen-E",
    "U.S.S. Enterprise NCC-1701", "Vespa 90 SS Super Sprint (1966)",
    "Volkswagen Transporter T1 Pickup , Porsche 917 LH , 1967 Porsche 911 , Porsche 935 R",
    "Williams Racing", "X-34 Landspeeder"
  )

  result <- list_unique_models(df)

  expect_type(result, "character")
  expect_length(result, 129)
  expect_equal(result, sort(expected))
})
