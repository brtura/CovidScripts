urls_csv <- c(
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=AC/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=AL/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=AM/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=AM/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=AP/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=BA/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=BA/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=BA/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=BA/lote=4/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=BA/lote=5/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=CE/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=CE/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=CE/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=DF/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=ES/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=GO/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=GO/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=GO/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MA/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MA/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=4/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=5/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=6/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=7/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MG/lote=8/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MS/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MS/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=MT/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PA/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PA/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PB/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PB/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PE/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PE/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PE/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PI/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PR/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=PR/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RJ/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RJ/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RJ/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RJ/lote=4/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RJ/lote=5/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RJ/lote=6/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RN/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RN/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RO/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RR/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=4/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=5/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=6/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=7/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=RS/lote=8/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=4/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=5/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=6/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=7/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SC/lote=8/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SE/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=10/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=11/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=12/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=13/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=14/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=15/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=16/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=17/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=18/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=19/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=20/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=21/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=22/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=2/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=3/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=4/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=5/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=6/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=7/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=8/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=SP/lote=9/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv',
'https://s3-sa-east-1.amazonaws.com/ckan.saude.gov.br/SGL/20220111/uf=TO/lote=1/part-00000-4c9f2dc6-fcb1-4509-a95e-c4f37a70421b.c000.csv')
