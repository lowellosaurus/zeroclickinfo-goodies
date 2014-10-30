package DDG::Goodie::IndependenceDay;
# ABSTRACT: Goodie answer for different countries' national independence days

use DDG::Goodie;
use JSON;

zci answer_type => "independence_day";
zci is_cached   => 1;

# Metadata.  See https://duck.co/duckduckhack/metadata for help in filling out this section.
name "independence day";
description "Gives the date of when a nation assumed independence";
primary_example_queries "what is the independence day of norway", "independence day, papua new guinea";
category "dates";
topics "trivia";
code_url "https://github.com/duckduckgo/zeroclickinfo-goodies/blob/master/lib/DDG/Goodie/IndependenceDay.pm";
attribution github => ["jarmokivekas", "Jarmo Kivekäs"],
            web => ["http://guttula.com", "Jarmo Kivekäs"],
            github => ["YouriAckx", "Youri Ackx"],
            twitter => "YouriAckx";


# Triggers
triggers any => "independence day", "day of independence";



my %data = (
    'abkhazia' => [{date => "July 4th", year => "1993"}],
    'afghanistan' => [{date => "August 19th", year => "1919"}],
    'albania' => [{date => "November 28th", year => "1912"}],
    'algeria' => [{date => "July 5th", year => "1962"}],
    'angola' => [{date => "November 11th", year => "1975"}],
    'antigua and barbuda' => [{date => "November 1st", year => "1981"}],
    'argentina' => [{date => "July 9th", year => "1816"}],
    'armenia' => [{date => "May 28th", year => "1918"},{date => "September 21th", year => "1991"}],
    'austria' => [{date => "October 26th", year => "1955"}],
    'azerbaijan' => [{date => "May 28th", year => "1918"},{date => "October 18th", year => "1991"}],
    'bahamas' => [{date => "July 10th", year => "1973"}],
    'bahrain' => [{date => "August 15th", year => "1971"}],
    'bangladesh' => [{date => "March 26th", year => "1971"}],
    'barbados' => [{date => "November 30th", year => "1966"}],
    'belarus' => [{date => "July 3rd", year => "1944"}],
    'belgium' => [{date => "July 21th", year => "1831"}],
    'belize' => [{date => "September 21th", year => "1981"}],
    'benin' => [{date => "August 1st", year => "1960"}],
    'bolivia' => [{date => "August 6th", year => "1825"}],
    'bosnia and herzegovina' => [{date => "March 1st", year => "1992"}],
    'botswana' => [{date => "September 30th", year => "1966"}],
    'brazil' => [{date => "September 7th", year => "1822"}],
    'brunei' => [{date => "January 1st", year => "1984"}],
    'bulgaria' => [{date => "September 22th", year => "1908"}],
    'burkina faso' => [{date => "August 5th", year => "1960"}],
    'burma' => [{date => "January 4th", year => "1948"}],
    'burundi' => [{date => "July 1st", year => "1962"}],
    'cambodia' => [{date => "November 9th", year => "1953"}],
    'cameroon' => [{date => "January 1st", year => "1960"}],
    'canada' => [{date => "July 1st", year => "1867"}],
    'cape verde' => [{date => "July 5th", year => "1975"}],
    'central african republic' => [{date => "August 13th", year => "1960"}],
    'chad' => [{date => "August 11th", year => "1960"}],
    'chile' => [{date => "February 12 and September 18th", year => "1810"}],
    'colombia' => [{date => "July 20 and August 7th", year => "1810"}],
    'comoros' => [{date => "July 6th", year => "1975"}],
    'democratic republic of the congo' => [{date => "June 30th", year => "1960"}],
    'republic of the congo' => [{date => "August 15th", year => "1960"}],
    'costa rica' => [{date => "September 15th", year => "1821"}],
    'croatia' => [{date => "October 8th", year => "1991"}],
    'cuba' => [{date => "May 20th", year => "1902"}],
    'cyprus' => [{date => "October 1st", year => "1960"}],
    'czech republic' => [{date => "October 28th", year => "1918"},{date => "January 1st", year => "1993"}],
    'denmark' => [{date => "June 5th", year => "1849"}],
    'djibouti' => [{date => "June 27th", year => "1977"}],
    'dominica' => [{date => "November 3rd", year => "1978"}],
    'dominican republic' => [{date => "December 1st", year => "1821"},{date => "February 27th", year => "1844"}],
    'east timor' => [{date => "May 20th", year => "2002"}],
    'ecuador' => [{date => "August 10th", year => "1809"}],
    'ecuador' => [{date => "May 24th", year => "1822"}],
    'el salvador' => [{date => "September 15th", year => "1821"}],
    'equatorial guinea' => [{date => "October 12th", year => "1968"}],
    'eritrea' => [{date => "May 24th", year => "1993"}],
    'estonia' => [{date => "February 24th", year => "1918"},{date => "August 20th", year => "1991"}],
    'fiji' => [{date => "October 10th", year => "1970"}],
    'finland' => [{date => "December 6th", year => "1917"}],
    'gabon' => [{date => "August 17th", year => "1960"}],
    'the gambia' => [{date => "February 18th", year => "1965"}],
    'georgia' => [{date => "May 26th", year => "1918"},{date => "April 9th", year => "1991"}],
    'ghana' => [{date => "March 6th", year => "1957"}],
    'greece' => [{date => "March 25th", year => "1821"}],
    'grenada' => [{date => "February 7th", year => "1974"}],
    'guatemala' => [{date => "September 15th", year => "1821"}],
    'guinea' => [{date => "October 2nd", year => "1958"}],
    'guinea-bissau' => [{date => "September 24th", year => "1973"}],
    'guyana' => [{date => "May 26th", year => "1966"}],
    'haiti' => [{date => "January 1st", year => "1804"}],
    'honduras' => [{date => "September 15th", year => "1821"}],
    'hungary' => [{date => "August 20th", year => "1000"}],
    'iceland' => [{date => "December 1st", year => "1918"}],
    'india' => [{date => "August 15th", year => "1947"}],
    'indonesia' => [{date => "August 17th", year => "1945"}],
    'iraq' => [{date => "October 3rd", year => "1932"}],
    'ireland' => [{date => "April 24th", year => "1916"}],
    'israel' => [{date => "Iyar 5th", year => "1948"}],
    'ivory coast' => [{date => "August 7th", year => "1960"}],
    'jamaica' => [{date => "August 6th", year => "1962"}],
    'japan' => [{date => "February 11th", year => "660 B.C."}],
    'jordan' => [{date => "May 25th", year => "1946"}],
    'kazakhstan' => [{date => "December 16th", year => "1991"}],
    'kenya' => [{date => "December 12th", year => "1963"}],
    'north korea' => [{date => "September 9th", year => "1948"}],
    'south korea' => [{date => "August 15th", year => "1945"}],
    'kosovo' => [{date => "February 8th", year => "2008"}],
    'kuwait' => [{date => "February 25th", year => "1961"}],
    'kyrgyzstan' => [{date => "August 31th", year => "1991"}],
    'laos' => [{date => "October 22th", year => "1953"}],
    'latvia' => [{date => "November 18th", year => "1918"}],
    'latvia' => [{date => "May 4th", year => "1990"}],
    'lebanon' => [{date => "November 22th", year => "1943"}],
    'lesotho' => [{date => "October 4th", year => "1966"}],
    'liberia' => [{date => "July 26th", year => "1847"}],
    'libya' => [{date => "December 24th", year => "1951"}],
    'lithuania' => [{date => "February 16th", year => "1918"},{date => "March 11th", year => "1990"}],
    'republic of macedonia' => [{date => "September 8th", year => "1991"}],
    'madagascar' => [{date => "June 26th", year => "1960"}],
    'malawi' => [{date => "July 6th", year => "1964"}],
    'malaysia' => [{date => "August 31th", year => "1957"},{date => "September 16th", year => "1963"}],
    'maldives' => [{date => "July 26th", year => "1965"}],
    'mali' => [{date => "September 22th", year => "1960"}],
    'malta' => [{date => "September 21th", year => "1964"}],
    'mauritius' => [{date => "March 12th", year => "1968"}],
    'mexico' => [{date => "September 16th", year => "1810"}],
    'moldova' => [{date => "August 27th", year => "1991"}],
    'mongolia' => [{date => "December 29th", year => "1911"}],
    'montenegro' => [{date => "May 21th", year => "2006"}],
    'morocco' => [{date => "November 18th", year => "1956"}],
    'mozambique' => [{date => "June 25th", year => "1975"}],
    'nagorno-karabakh' => [{date => "September 2nd", year => "1991"}],
    'namibia' => [{date => "March 21th", year => "1990"}],
    'nauru' => [{date => "January 31th", year => "1968"}],
    'netherlands' => [{date => "May 5th", year => "1945"}],
    'nicaragua' => [{date => "September 15th", year => "1821"}],
    'niger' => [{date => "August 3rd", year => "1960"}],
    'nigeria' => [{date => "October 1st", year => "1960"}],
    'northern cyprus' => [{date => "September 2nd", year => "1983"}],
    'norway' => [{date => "May 17th", year => "1814"}],
    'pakistan' => [{date => "August 14th", year => "1947"}],
    'panama' => [{date => "November 28th", year => "1821"},{date => "November 3rd", year => "1903"}],
    'papua new guinea' => [{date => "September 16th", year => "1975"}],
    'paraguay' => [{date => "May 15th", year => "1811"}],
    'peru' => [{date => "July 28th", year => "1821"}],
    'philippines' => [{date => "June 12th", year => "1898"}],
    'poland' => [{date => "November 11th", year => "1918"}],
    'portugal' => [{date => "December 1st", year => "1640"}],
    'qatar' => [{date => "December 18th", year => "1971"}],
    'rhodesia' => [{date => "November 11th", year => "1965"}],
    'romania' => [{date => "May 10th", year => "1866"}],
    'rwanda' => [{date => "July 1st", year => "1962"}],
    'saint kitts and nevis' => [{date => "September 19th", year => "1983"}],
    'saint lucia' => [{date => "February 22th", year => "1979"}],
    'saint vincent and the grenadines' => [{date => "October 27th", year => "1979"}],
    'samoa' => [{date => "January 1st", year => "1962"}],
    'são tomé and príncipe' => [{date => "July 12th", year => "1975"}],
    'senegal' => [{date => "April 4th", year => "1960"}],
    'serbia' => [{date => "February 15th", year => "1804"}],
    'seychelles' => [{date => "June 29th", year => "1976"}],
    'sierra leone' => [{date => "April 27th", year => "1961"}],
    'singapore' => [{date => "August 9th", year => "1965"}],
    'slovakia' => [{date => "July 17th", year => "1992"},{date => "December 26 and June 25th", year => "1990"}],
    'solomon islands' => [{date => "July 7th", year => "1978"}],
    'somalia' => [{date => "July 1st", year => "1960"}],
    'south africa' => [{date => "December 11th", year => "1931"}],
    'south sudan' => [{date => "July 9th", year => "2011"}],
    'sri lanka' => [{date => "February 4th", year => "1948"}],
    'sudan' => [{date => "January 1st", year => "1956"}],
    'suriname' => [{date => "November 25th", year => "1975"}],
    'swaziland' => [{date => "September 6th", year => "1968"}],
    'sweden' => [{date => "June 6th", year => "1523"}],
    'switzerland' => [{date => "August 1st", year => "1291"}],
    'syria' => [{date => "April 17th", year => "1946"}],
    'tajikistan' => [{date => "September 9th", year => "1991"}],
    'tanzania' => [{date => "December 9th", year => "1961"}],
    'togo' => [{date => "April 27th", year => "1960"}],
    'tibet' => [{date => "February 13th", year => "1913"}],
    'tonga' => [{date => "June 4th", year => "1970"}],
    'trinidad and tobago' => [{date => "August 31th", year => "1962"}],
    'tunisia' => [{date => "March 20th", year => "1956"}],
    'turkmenistan' => [{date => "October 27th", year => "1991"}],
    'ukraine' => [{date => "August 24th", year => "1991"}],
    'ukraine' => [{date => "January 22th", year => "1919"}],
    'united arab emirates' => [{date => "December 2nd", year => "1971"}],
    'united states of america' => [{date => "July 4th", year => "1776"}],
    'uruguay' => [{date => "August 25th", year => "1825"}],
    'uzbekistan' => [{date => "September 1st", year => "1991"}],
    'vanuatu' => [{date => "July 30th", year => "1980"}],
    'venezuela' => [{date => "July 5th", year => "1811"}],
    'vietnam' => [{date => "September 2nd", year => "1945"}],
    'yemen' => [{date => "November 30th", year => "1967"}],
    'zambia' => [{date => "October 24th", year => "1964"}],
    'zimbabwe' => [{date => "April 18th", year => "1980"}],
);


# define aliases for some countries to improve hit rate
my %alias_lookup = (
    'antigua' => 'antigua and barbuda',
    'arab emirates' => 'united arab emirates',
    'barbuda' => 'antigua and barbuda',
    'bosnia' => 'bosnia and herzegovina',
    'democratic republic of congo' => 'democratic republic of the congo',
    'gambia' => 'the gambia',
    'grenadines' => 'saint vincent and the grenadines',
    'guinea bissau' => 'guinea-bissau',
    'herzegovina' => 'bosnia and herzegovina',
    'macedonia' => 'republic of macedonia',
    'nevis' => 'saint kitts and nevis',
    'principe' => 'são tomé and príncipe',
    'republic of congo' => 'republic of the congo',
    'saint kitts' => 'saint kitts and nevis',
    'saint vincent' => 'saint vincent and the grenadines',
    'sao tome and principe' => 'são tomé and príncipe',
    'sao tome' => 'são tomé and príncipe',
    'tobago' => 'trinidad and tobago',
    'trinidad' => 'trinidad and tobago',
    'united states' => 'united states of america',
    'usa' => 'united states of america',
);


# Handle statement
handle query_clean => sub {

    # delete noise from query string
    s/(national|independence of|independence|day of|day|when|what|is the|for|)//g;
    # delete the whitespace left from query noise (spaces between words)
    s/^\s*|\s*$//g;
    # only the name of the country should be left in the string at this point


    # convert a possible alias into the proper name
    my $country_key = $alias_lookup{$_} || $_;


    # return if the string is not one of the countries
    return unless $data{$country_key};


    # Format the country name properly for display
    my $country = $country_key;
    # Title Case The Country Name
    $country =~ s/(\w\S*)/\u\L$1/g;
    # lowercase the words 'of', 'the' and 'and'
    $country =~ s/\sThe\s/ the /;
    $country =~ s/\sOf\s/ of /;
    $country =~ s/\sAnd\s/ and /;


    # ouput string formatting
    my $prolog = $country . ' assumed independence on ';
    # date and year of independence
    my $date_str = $data{$country_key}[0]{'date'} . ', ' . $data{$country_key}[0]{'year'};
    # Some coutries have two dates, add it to the answer if a second one exists.
    if ($data{$country_key}[1]){
        $date_str .= ' and ' . $data{$country_key}[1]{'date'} . ', ' . $data{$country_key}[1]{'year'};
    }


    # html formatted answer
    my $html = '<div class="text--secondary">' . $prolog . '</div>';
    $html .= '<div class="text--primary">' . $date_str . '</div>';
    # plain text answer
    my $text = $prolog  . $date_str;

    return $text, html => $html;

};

1;
