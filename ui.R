library(shiny)

shinyUI(
    navbarPage("na prachuritham",
               tabPanel("asdfgertr",
                        fluidPage(
                            titlePanel("na perumarchukonu vatiki maruyu nitiki vunna samandham idi"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("enni gundralu vunnayao" = "cyl",
                                                  "entha jarapa galam" = "disp",
                                                  "entha gurapu balamu" = "hp",
                                                  "venaka vundhu madyantaramu" = "drat",
                                                  "baruvu entha vundunu" = "wt",
                                                  "okatiki nalugo vanthu samayamu entha ani" = "qsec",
                                                  "vegamu maruyu samayamu yokka khinatha" = "vs",
                                                  "pariyathamu naku chendhinadhi" = "am",
                                                  "enni guralu mundhu ku vunnai anni chepeydhi" = "gear",
                                                  "pethal apetha lu" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("naistam")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("BoxPlot", plotOutput("nagudranibomma")),
                                                tabPanel("Regression model", 
                                                         plotOutput("nabomma"),
                                                         verbatimTextOutput("bondhalodhi")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("deniki paniki radhu edi",
                        
                        h3("nshcsdyucg vbhfdsguhser byuerufwer fwgey"),
                        helpText("naku istam vacchi nattu rastha na istam niku endhuku annadu a vesakarudu",
                                 "bvfdsuvh vdbvsfhhisr dfuhvuirhgjihtr gvrhguiwen hvuwerhguiwerng verhywerignejv erhuwerhguitng vehuvhrug burhgtr"),
                        h3("paniki ranidhi"),
                        p("mupai raendu matruku padhakundu vunnavi denilo"),
                        
                        a("https://www.coursera.org/learn/regression-models")
               ),
               tabPanel("niki vupayaogam lenivi",
                        h2("deniki paniki ranivi"),
                        hr(),
                        h3("sdfvuezvkmkovefafmkbjstbj"),
                        helpText("e vishayamulu okkati thomodhi dabai nalugu lonivi,",
                                 " and comprises fuel consumption and 10 aspects of automobile design and performance",
                                 " mupai rendu vunaralu."),
                        h3("vidhanamu"),
                        p("anniti yokka viavaralu ni annavasaram lenivey"),
                        
                        p("na vachindhi nennu rastha"),
                        p("mukya manishi inkokalini kalusthadu appudu chitrsm modhalum avvidhi"),
                        p("appudu ayanaiki ameyki padadhu edharu edari lo kalustharu"),
                        p("thanu athaniki mudhu pedathadniki prayatnisthundhu"),
                        p("dhaniki ki athadu oppukodu legisi pothadu"),
                        p("thu_ _ _____agava rayadaniki ni endhuku"),
                        p("appudu athanu amey papa ni kalusthadu appudu appudu"),
                        p("vaalu yedari lo vuntaru kalustharu akkadey timtaru"),
                        p("akkada vallaki ali ni kalusthary ehkbjhbfdijnfjnjdf bjhbsdfvjk bser"),
                        p("buhdfguv dfbuvhsfjv giehfjvn huifhur afbufherunerweur jerjghuiwegj hjehrfnwerh"),
                        p("enka emi vundhi kadha samaptham ele aala jarigindhi ni endhuku"),
                        
                        h3("akkada nunchi vacchayo akkadivey"),
                        
                        p("nadhi rajamahendrabgydvaram andhbhdfbvyuprafdrdesh bhacfdtyrat deshabjhfbuimu anbbrnil")
               ),
               tabPanel("na yokka vishayamulu",
                        a("https://www.coursera.org/learn/data-products/peer/tMYrn/course-project-shiny-application-and-reproducible-pitch/submit"),
                        hr(),
                        h4("edi na modhati hvsfgyutrb appthakamu"),
                        h4("edi na danilo vethukuntey vuntadhu chuduko")
               )
    )
)