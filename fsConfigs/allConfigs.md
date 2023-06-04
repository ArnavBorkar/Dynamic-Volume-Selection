## FS Configurations to Run Benchmarks

| Stripe Count | with Targets | Desc                                      |
|--------------|--------------|-------------------------------------------|
| 1            | 401          | Basic                                     |
| 1            | 403          | Basic OS                                  |
| 1            | 501          | Basic 2                                   |
| 1            | 503          | Basic OS 2                                |
| 2            | 401,402      | 2,0,0 homogen on same blade               |
| 2            | 401,403      | 2,0,0 heterogen on same blade             |
| 2            | 401,501      | 1,1,0 homogen                             |
| 2            | 401,503      | 1,1,0 heterogen                           |
| 3            | 401,402,403  | Same blade, all                           |
| 3            | 601,602,603  | Same blade, all 2                         |
| 3            | 401,501,601  | One non-OS each blade                     |
| 3            | 403,503,603  | One OS each blade                         |
| 3            | 401,501,603  | Two non-OS, one OS, one each blade         |
| 3            | 401,503,603  | Two OS, one non-OS, one each blade         |
| 3            | 401,501,502  | Three non-OS, in two blades                |
| 3            | 401,501,503  | Two OS, one non-OS in two blades           |
| 4            | 401,402,501,502 | 2,2 homogen                               |
| 4            | 401,403,501,503 | 2,2 heterogen                             |
| 4            | 401,501,601,602 | 1,1,2 homogen                             |
| 4            | 401,501,601,603 | 1,1,2 heterogen                           |
| 6            | 401,402,501,502,601,602 | 2,2,2 homogen                     |
| 6            | 401,403,501,503,601,603 | 2,2,2 heterogen                   |
| 6            | 401,402,403,501,502,503 | 3,3,0                                     |
| 9            | All Targets  | All Targets                               |

## Comparisons and Reason for Comparison

| Num | Comparison               | Reason                                      |
|-----|--------------------------|---------------------------------------------|
| 1   | 1 vs 9                   | To compare the no parallel config with the most parallel config                 |
| 2   | 1 vs 2                   | Compare OS and non-OS Drive                 |
| 3   | 1 vs 3                   | Compare similarity of two non-OS drives of different server                   |
| 4   | 2 vs 4                   | Compare similarity of two OS drives of different server                       |
| 5   | 5 vs 6                   | Compare homogen vs Heterogen performance on same blade with two targets        |
| 6   | 7 vs 8                   | Compare homogen vs Heterogen performance on different blade with one each targets |
| 7   | 9 vs 10                  | Compare max performances of two different blades                              |
| 8   | 11 vs 12                 | Compare between OS and non-OS drives with one target in each blade             |
| 9   | 17 vs 18                 | Compare 4 targets homogen vs heterogen 2 each blade                           |
| 10  | 19 vs 20                 | Homogen vs heterogen with 4 targets across 3 blades                           |
| 11  | 21 vs 22                 | Homogen vs heterogen across 3 blades max num targets                          |
| 12  | 23 vs (21 & 22)          | 2 blades all targets vs 2 targets each blade (homo & hetero)                  |
| 13  | 1 vs 5 vs 9              | Same blade different stripe count                                              |
| 14  | 1 vs 7 vs 11             | One blade vs two vs three, one target each                                     |
| 15  | 1 vs 5 vs 11 vs 19 vs 21 vs 24 | Different stripe counts, using as many servers as possible               |
| 16  | 1 vs 5 vs 9 vs 17 vs 23 vs 24 | Different stripe counts, using as few servers as possible                |
