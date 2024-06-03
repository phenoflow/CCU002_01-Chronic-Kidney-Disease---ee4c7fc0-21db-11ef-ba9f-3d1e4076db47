# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"Z940","system":"snomedct"},{"code":"T861","system":"snomedct"},{"code":"X30MY","system":"snomedct"},{"code":"X30MP","system":"snomedct"},{"code":"Xa0HK","system":"snomedct"},{"code":"X30MU","system":"snomedct"},{"code":"X30MW","system":"snomedct"},{"code":"X30Mc","system":"snomedct"},{"code":"X30MT","system":"snomedct"},{"code":"XaM1o","system":"snomedct"},{"code":"X30MZ","system":"snomedct"},{"code":"X30MV","system":"snomedct"},{"code":"X30MR","system":"snomedct"},{"code":"XaM1p","system":"snomedct"},{"code":"7B00.","system":"snomedct"},{"code":"XaMKM","system":"snomedct"},{"code":"7B002","system":"snomedct"},{"code":"X30Mh","system":"snomedct"},{"code":"X30MQ","system":"snomedct"},{"code":"X30D2","system":"snomedct"},{"code":"X30MN","system":"snomedct"},{"code":"7B00z","system":"snomedct"},{"code":"XaZWa","system":"snomedct"},{"code":"X30MX","system":"snomedct"},{"code":"X30MS","system":"snomedct"},{"code":"X30Md","system":"snomedct"},{"code":"Xa1dw","system":"snomedct"},{"code":"X30Mg","system":"snomedct"},{"code":"Xa0HL","system":"snomedct"},{"code":"X30Mb","system":"snomedct"},{"code":"X30Ma","system":"snomedct"},{"code":"XaZYx","system":"snomedct"},{"code":"7B00y","system":"snomedct"},{"code":"X30MO","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-chronic-kidney-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-chronic-kidney-disease-ckd-transplantation---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-chronic-kidney-disease-ckd-transplantation---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-chronic-kidney-disease-ckd-transplantation---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
