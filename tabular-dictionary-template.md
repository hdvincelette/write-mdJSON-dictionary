# Tabular Dictionary Template

To view the tabular dictionary template, open the docs subfolder in the R Project folder and click   "write.mdJSON\_Dictionary\_Template.xlsx." You must enter your data in this format to successfully operate the functions in this R Project and write an mdJSON dictionary.&#x20;

![The tabular dictionary template.](<.gitbook/assets/Screen Shot 2022-03-03 at 11.52.01 AM.png>)

The two main components of the tabular dictionary template are attributes and entry values, each of which need to be represented as a row in the template. It is important to remember that while entry values are associated with a certain attribute, not all attributes have defined entry values. For example, the attribute "Sex" may have three defined entry values ("F","M", and "U"), where as the attribute "Year" does not have defined entry values since an unlimited number of years can be entered.

The following table describes the header in the tabular dictionary template. These dictionary columns represent field(s) in mdEditor Dictionary records. "Definition" describes the dictionary column. Many of the definitions in the table below were derived from the [mdEditor User Manual](https://guide.mdeditor.org/reference/edit-window/dictionary/dictionary-record.html). "Datatype" indicates the type of value allowed in the dictionary column. "Required" indicates whether the dictionary column is required by attributes and/or entry values ("No" indicates it is not required by either attributes or entry values).&#x20;

A few things to note:

* The dictionary columns "codeName," "domainItem\_name," "domainItem\_value," and "definition" are all required by attributes and entry values.
* The dictionary columns "dataType" and "allowNull" are required by attributes

Tip: View attribute rows by filtering the dictionary column "domainItem\_name" to "colname" and verify all rows have values for dictionary columns "dataType" and "allowNull".

| Column            | Definition                                                                                                                                     | Datatype          | Required                             |
| ----------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ----------------- | ------------------------------------ |
| codeName          | Attribute name; the code used to identify this attribute; most often this will be the table or spreadsheet column name.                        | character varying | <p>Attributes</p><p>Entry values</p> |
| domainItem\_name  | A descriptive name associated with the Domain Item value; the default is to use the Domain Item Value; rows regarding attributes are 'colname' | character varying | <p>Attributes</p><p>Entry values</p> |
| domainItem\_value | The Domain Item value; the value in the table; rows regarding attributes are 'colname'                                                         | character varying | <p>Attributes</p><p>Entry values</p> |
| definition        | A succinct but comprehensive definition for the attribute or Domain Item                                                                       | character varying | <p>Attributes</p><p>Entry values</p> |
| dataType          | The datatype or format of the entry values for an attribute; choose from drop down.                                                            | character varying | <p></p><p>Attributes</p>             |
| allowNull         | Indicates whether null values are permitted as the attribute value (yes/no)                                                                    | binary            | Attributes                           |
| units             | A unit-of-measure for the attribute. E.g. 'meters', 'atmospheres', 'liters'; Unrestricted, though SI units are recommended; lowercase only     | character varying | No                                   |
| unitsResolution   | The smallest unit increment to which an attribute value is measured.                                                                           | decimal           | No                                   |
| minValue          | The minimum range value permissible for this attribute; this may be a numeric or character.                                                    | character varying | No                                   |
| maxValue          | The maximum range value permissible for this attribute; this may be a numeric or character.                                                    | character varying | No                                   |
| isCaseSensitive   | Indicates if the content of the data set is encoded in case-sensitive ASCII (yes/no)                                                           | binary            | No                                   |
| notes             | Anything entered here will be excluded from the mdJSON dictionary                                                                              | character varying | No                                   |



"dataType" is the only dictionary column with defined entry values. These are derived from the mdEditor web application. The definitions in the table below were acquired from the [mdCodes Viewer](https://adiwg.github.io/mdTools/#codes-page) in the mdTools interface.

&#x20;

| "dataType" Entry Value          | Definition                                                       |
| ------------------------------- | ---------------------------------------------------------------- |
| character                       | fixed length character strings                                   |
| character varying               | Variable length character strings                                |
| character large object          | Character large object                                           |
| national character              | Fixed length national character strings (2 byte unicode)         |
| national character varying      | Variable length national character strings (2 byte unicode)      |
| national character large object | National character (2 byte unicode) large object                 |
| text                            | Variable string to maximum of 65k characters                     |
| tinytext                        | Variable string to maximum of 255 characters                     |
| mediumtext                      | Variable string to maximum of 16m characters                     |
| longtext                        | Variable string to maximum of 4g characters                      |
| binary                          | Fixed length binary                                              |
| binary varying                  | Variable length binary                                           |
| binary large object             | Binary large object to maximum of 65k bytes                      |
| mediumblob                      | Binary large object to maximum of 16m bytes                      |
| longblob                        | Binary large object to maximum of 4g bytes                       |
| integer                         | Integers number (+-2b)                                           |
| tinyint                         | Integer numbers (+-128)                                          |
| mediumint                       | Integer numbers (+-16k)                                          |
| smallint                        | Integer numbers (+-32k)                                          |
| bigint                          | Integer numbers (+-1e27)                                         |
| float                           | Floating point numbers                                           |
| real                            | Low precision floating point numbers                             |
| double precision                | High precision floating point numbers                            |
| numeric                         | Fixed precision  and scale decimal numbers                       |
| decimal                         | Fixed precision  and scale decimal numbers (numeric alternate)   |
| bit                             | Fixed length bit strings                                         |
| bit varying                     | Variable length bit strings                                      |
| date                            | Calendar date                                                    |
| time                            | Clock time                                                       |
| datetime                        | Date and time                                                    |
| timestamp                       | Number of seconds since the unix epoch (1970-01-01t00:00:00 utc) |
| year                            | Year                                                             |
| interval                        | Time intervals                                                   |
| interval day                    | Day intervals                                                    |
| interval year                   | Year intervals                                                   |
| currency                        | Monetary value                                                   |
| money                           | Monetary value                                                   |
| boolean                         | Boolean value (yes/no)                                           |
| xml                             | Xml formatted data                                               |
| enum                            | List of possible values: enum('a','b','c')                       |

![The example data table and its corresponding tabular dictionary. The blue arrow shows how the attribute "Sex" was formatted as a row in the dictionary. The orange arrows show how the defined entry values "M", "F", and "U" are formatted as rows in the dictionary.](<.gitbook/assets/Screen Shot 2022-03-03 at 11.55.30 AM copy.png>)

To view an example of a completed tabular dictionary, open "Example\_Dictionary.xlsx" in the inputs subfolder of the R Project folder.

A quick note: While csv is a more flexible file format, this tabular dictionary template is in xlsx format because it contains validation rules that prevent incorrect values from being entered, resulting in errors when running the functions in this R Project.
