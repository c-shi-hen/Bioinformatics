path=$(pwd)/1.gtf

echo "hw2.2"
echo -e '\n'

echo "##the last 10 CDS sites of XI chromosome"
cat ${path} | awk '{if($1=="XI" && $3 == "CDS") print}' | tail -10 
echo -e '\n'
echo "##sort with the final site of each CDS by ascii"
cat ${path} | awk '{if($1=="XI" && $3=="CDS") print}' | tail -10 | sort -k5,5n 
echo -e '\n'

echo "##show the number of each feature"
grep -v "^#" ${path}  | awk '($1 == "IV"){print $3}' | sort | uniq -c | sort -k1,1n
echo -e '\n'

echo "##the two longest CDS sites not on IV chromosome"
awk '($1 != "IV") && ($7 == "-") && ($3 == "CDS") {print $5 - $4 + 1}' ${path} | sort -k1,1n | tail -2
echo -e '\n'

echo "##the five longest genes on chromosome XV"
awk '($1 == "XV" && $3 == "gene") {print $10, $5 - $4 + 1}' ${path} | sort -k2,2n | tail -5
echo -e '\n'

echo "##the number of each column"
awk '{print NF}' ${path} | sort | uniq -c | sort -k1,1n
echo -e '\n'

echo "all result"
echo "hw2.2


##the last 10 CDS sites of XI chromosome
XI	ensembl	CDS	631152	632798	.	+	0	gene_id "YKR097W"; gene_version "1"; transcript_id "YKR097W"; transcript_version "1"; exon_number "1"; gene_name "PCK1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "PCK1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR097W"; protein_version "1";
XI	ensembl	CDS	633029	635179	.	-	0	gene_id "YKR098C"; gene_version "1"; transcript_id "YKR098C"; transcript_version "1"; exon_number "1"; gene_name "UBP11"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "UBP11"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR098C"; protein_version "1";
XI	ensembl	CDS	635851	638283	.	+	0	gene_id "YKR099W"; gene_version "1"; transcript_id "YKR099W"; transcript_version "1"; exon_number "1"; gene_name "BAS1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "BAS1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR099W"; protein_version "1";
XI	ensembl	CDS	638904	639968	.	-	0	gene_id "YKR100C"; gene_version "1"; transcript_id "YKR100C"; transcript_version "1"; exon_number "1"; gene_name "SKG1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "SKG1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR100C"; protein_version "1";
XI	ensembl	CDS	640540	642501	.	+	0	gene_id "YKR101W"; gene_version "1"; transcript_id "YKR101W"; transcript_version "1"; exon_number "1"; gene_name "SIR1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "SIR1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR101W"; protein_version "1";
XI	ensembl	CDS	646356	649862	.	+	0	gene_id "YKR102W"; gene_version "1"; transcript_id "YKR102W"; transcript_version "1"; exon_number "1"; gene_name "FLO10"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "FLO10"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR102W"; protein_version "1";
XI	ensembl	CDS	653080	656733	.	+	0	gene_id "YKR103W"; gene_version "1"; transcript_id "YKR103W"; transcript_version "1"; exon_number "1"; gene_name "NFT1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "NFT1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR103W"; protein_version "1";
XI	ensembl	CDS	656836	657753	.	+	0	gene_id "YKR104W"; gene_version "1"; transcript_id "YKR104W"; transcript_version "1"; exon_number "1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "YKR104W"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR104W"; protein_version "1";
XI	ensembl	CDS	658719	660464	.	-	0	gene_id "YKR105C"; gene_version "1"; transcript_id "YKR105C"; transcript_version "1"; exon_number "1"; gene_name "VBA5"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "VBA5"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR105C"; protein_version "1";
XI	ensembl	CDS	661442	663286	.	+	0	gene_id "YKR106W"; gene_version "1"; transcript_id "YKR106W"; transcript_version "1"; exon_number "1"; gene_name "GEX2"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "GEX2"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR106W"; protein_version "1";


##sort with the final site of each CDS by ascii
XI	ensembl	CDS	631152	632798	.	+	0	gene_id "YKR097W"; gene_version "1"; transcript_id "YKR097W"; transcript_version "1"; exon_number "1"; gene_name "PCK1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "PCK1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR097W"; protein_version "1";
XI	ensembl	CDS	633029	635179	.	-	0	gene_id "YKR098C"; gene_version "1"; transcript_id "YKR098C"; transcript_version "1"; exon_number "1"; gene_name "UBP11"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "UBP11"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR098C"; protein_version "1";
XI	ensembl	CDS	635851	638283	.	+	0	gene_id "YKR099W"; gene_version "1"; transcript_id "YKR099W"; transcript_version "1"; exon_number "1"; gene_name "BAS1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "BAS1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR099W"; protein_version "1";
XI	ensembl	CDS	638904	639968	.	-	0	gene_id "YKR100C"; gene_version "1"; transcript_id "YKR100C"; transcript_version "1"; exon_number "1"; gene_name "SKG1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "SKG1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR100C"; protein_version "1";
XI	ensembl	CDS	640540	642501	.	+	0	gene_id "YKR101W"; gene_version "1"; transcript_id "YKR101W"; transcript_version "1"; exon_number "1"; gene_name "SIR1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "SIR1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR101W"; protein_version "1";
XI	ensembl	CDS	646356	649862	.	+	0	gene_id "YKR102W"; gene_version "1"; transcript_id "YKR102W"; transcript_version "1"; exon_number "1"; gene_name "FLO10"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "FLO10"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR102W"; protein_version "1";
XI	ensembl	CDS	653080	656733	.	+	0	gene_id "YKR103W"; gene_version "1"; transcript_id "YKR103W"; transcript_version "1"; exon_number "1"; gene_name "NFT1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "NFT1"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR103W"; protein_version "1";
XI	ensembl	CDS	656836	657753	.	+	0	gene_id "YKR104W"; gene_version "1"; transcript_id "YKR104W"; transcript_version "1"; exon_number "1"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "YKR104W"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR104W"; protein_version "1";
XI	ensembl	CDS	658719	660464	.	-	0	gene_id "YKR105C"; gene_version "1"; transcript_id "YKR105C"; transcript_version "1"; exon_number "1"; gene_name "VBA5"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "VBA5"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR105C"; protein_version "1";
XI	ensembl	CDS	661442	663286	.	+	0	gene_id "YKR106W"; gene_version "1"; transcript_id "YKR106W"; transcript_version "1"; exon_number "1"; gene_name "GEX2"; gene_source "ensembl"; gene_biotype "protein_coding"; transcript_name "GEX2"; transcript_source "ensembl"; transcript_biotype "protein_coding"; protein_id "YKR106W"; protein_version "1";


##show the number of each feature
    853 start_codon
    853 stop_codon
    886 gene
    886 transcript
    895 CDS
    933 exon


##the two longest CDS sites not on IV chromosome
12276
14730


##the five longest genes on chromosome XV
"YOR142W-B"; 5269
"YOR192C-B"; 5314
"YOR343W-B"; 5314
"YOR396W"; 5391
"YOL081W"; 9240


##the number of each column
      1 24
      5 2
   2115 26
   2116 16
   4067 32
   5010 18
   8472 28
   9932 30
  10534 34
"