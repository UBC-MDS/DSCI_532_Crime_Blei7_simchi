Exploratory Data Analysis of Crime Data
================
Bailey Lei, Simon Chiu

``` r
#load library
suppressPackageStartupMessages(library(tidyverse))
```

``` r
# load data
crime_data <- read_csv("../data/ucr_crime_1975_2015.csv")
```

    ## Parsed with column specification:
    ## cols(
    ##   ORI = col_character(),
    ##   year = col_double(),
    ##   department_name = col_character(),
    ##   total_pop = col_double(),
    ##   homs_sum = col_double(),
    ##   rape_sum = col_double(),
    ##   rob_sum = col_double(),
    ##   agg_ass_sum = col_double(),
    ##   violent_crime = col_double(),
    ##   months_reported = col_double(),
    ##   violent_per_100k = col_double(),
    ##   homs_per_100k = col_double(),
    ##   rape_per_100k = col_double(),
    ##   rob_per_100k = col_double(),
    ##   agg_ass_per_100k = col_double(),
    ##   source = col_character(),
    ##   url = col_character()
    ## )

``` r
#preview data
head(crime_data)
```

    ## # A tibble: 6 x 17
    ##   ORI    year department_name total_pop homs_sum rape_sum rob_sum
    ##   <chr> <dbl> <chr>               <dbl>    <dbl>    <dbl>   <dbl>
    ## 1 NM00~  1975 Albuquerque, N~    286238       30      181     819
    ## 2 TX22~  1975 Arlington, Tex~    112478        5       28     113
    ## 3 GAAP~  1975 Atlanta            490584      185      443    3887
    ## 4 CO00~  1975 Aurora, Colo.      116656        7       44     171
    ## 5 TX22~  1975 Austin, Texas      300400       33      190     529
    ## 6 MDBP~  1975 Baltimore          864100      259      463    9055
    ## # ... with 10 more variables: agg_ass_sum <dbl>, violent_crime <dbl>,
    ## #   months_reported <dbl>, violent_per_100k <dbl>, homs_per_100k <dbl>,
    ## #   rape_per_100k <dbl>, rob_per_100k <dbl>, agg_ass_per_100k <dbl>,
    ## #   source <chr>, url <chr>

``` r
library(gapminder)
                
summary((crime_data %>% 
  select(department_name,
         violent_per_100k,
         rape_per_100k,
         homs_per_100k,
         rob_per_100k,
         agg_ass_per_100k,
         months_reported,
         year)))
```

    ##  department_name    violent_per_100k rape_per_100k     homs_per_100k    
    ##  Length:2829        Min.   :  16.5   Min.   :  1.641   Min.   : 0.2055  
    ##  Class :character   1st Qu.: 625.1   1st Qu.: 35.774   1st Qu.: 6.9552  
    ##  Mode  :character   Median : 949.7   Median : 55.901   Median :11.9845  
    ##                     Mean   :1093.0   Mean   : 59.305   Mean   :15.3728  
    ##                     3rd Qu.:1409.5   3rd Qu.: 77.796   3rd Qu.:20.2318  
    ##                     Max.   :4352.8   Max.   :199.302   Max.   :94.7356  
    ##                     NA's   :35       NA's   :75        NA's   :34       
    ##   rob_per_100k     agg_ass_per_100k   months_reported      year     
    ##  Min.   :  11.46   Min.   :   1.607   Min.   : 0.00   Min.   :1975  
    ##  1st Qu.: 210.25   1st Qu.: 319.092   1st Qu.:12.00   1st Qu.:1985  
    ##  Median : 374.40   Median : 487.485   Median :12.00   Median :1995  
    ##  Mean   : 459.97   Mean   : 566.596   Mean   :11.87   Mean   :1995  
    ##  3rd Qu.: 612.01   3rd Qu.: 728.239   3rd Qu.:12.00   3rd Qu.:2005  
    ##  Max.   :2337.52   Max.   :2368.217   Max.   :12.00   Max.   :2015  
    ##  NA's   :75        NA's   :76         NA's   :137

Base on the intital EDA, we noticed that the variable for deparment
names contains cities as well as county and also for some year, not all
12 months are reported. Since not having all 12 months reported will be
problematic in term of the estimates for crime rate, we might decide to
remove all cases where there is less than 12 months reported. Also, we
will be filtering out all the county since we are interested in cities
and national crime rate only. We also decided to keep the NA in for now
since it won’t affect our plots, but we might remove it in the future if
needed. Lastly, we will need to rearrange our data into a tidy format
for ease of plotting.
