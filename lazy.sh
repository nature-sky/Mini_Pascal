make clean
make

echo "--------- [ Removing old files ] ---------"
rm feature_test/*.token
rm feature_test/*.parse
rm feature_test/*.s
rm feature_test/*.o
rm feature_test/feature1_block
rm feature_test/feature2_vardecl
rm feature_test/feature3_arraytype
rm feature_test/feature4_recordtype
rm feature_test/feature5_procfuncdecl
rm feature_test/feature6_compstmt
rm feature_test/feature7_ifstmt
rm feature_test/feature8_casestmt
rm feature_test/feature9_repeatstmt
rm feature_test/feature10_forstmt

echo "---------- [ Feature 01 Start ] ----------"
./mpc -acpt feature_test/feature1_block.pas feature_test/feature1_block.s
./standard_mpc -pt feature_test/feature1_block.pas feature_test/feature1_block_correct.s

diff feature_test/feature1_block.token feature_test/feature1_block_correct.token
diff feature_test/feature1_block.parse feature_test/feature1_block_correct.parse

#ld -f elf -i ./lib/ feature_test/feature1_block.s -o feature_test/feature1_block.o
#ld -m elf_i386 feature_test/feature1_block.o lib/libasm.a -o feature_test/feature1_block

#./feature_test/feature1_block
echo "---------- [  Feature 01 End  ] ----------"

echo "---------- [ Feature 02 Start ] ----------"
./mpc -acpt feature_test/feature2_vardecl.pas feature_test/feature2_vardecl.s
./standard_mpc -pt feature_test/feature2_vardecl.pas feature_test/feature2_vardecl_correct.s

diff feature_test/feature2_vardecl.token feature_test/feature2_vardecl_correct.token
diff feature_test/feature2_vardecl.parse feature_test/feature2_vardecl_correct.parse

#ld -f elf -i ./lib/ feature_test/feature2_vardecl.o feature_test/feature2_vardecl.o
#ld -m elf_i386 feature_test/feature2_vardecl.o lib/libasm.a -o feature_test/feature2_vardecl

#./feature_test/feature2_vardecl
echo "---------- [  Feature 02 End  ] ----------"

echo "---------- [ Feature 03 Start ] ----------"
./mpc -acpt feature_test/feature3_arraytype.pas feature_test/feature3_arraytype.s
./standard_mpc -pt feature_test/feature3_arraytype.pas feature_test/feature3_arraytype_correct.s

diff feature_test/feature3_arraytype.token feature_test/feature3_arraytype_correct.token
diff feature_test/feature3_arraytype.parse feature_test/feature3_arraytype_correct.parse

#ld -f elf -i ./lib/ feature_test/feature3_arraytype.s -o feature_test/feature3_arraytype.o
#ld -m elf_i386 feature_test/feature3_arraytype.o lib/libasm.a -o feature_test/feature3_arraytype

#./feature_test/feature3_arraytype
echo "---------- [  Feature 03 End  ] ----------"

echo "---------- [ Feature 04 Start ] ----------"
./mpc -acpt feature_test/feature4_recordtype.pas feature_test/feature4_recordtype.s
./standard_mpc -pt feature_test/feature4_recordtype.pas feature_test/feature4_recordtype_correct.s

diff feature_test/feature4_recordtype.token feature_test/feature4_recordtype_correct.token
diff feature_test/feature4_recordtype.parse feature_test/feature4_recordtype_correct.parse

#ld -f elf -i ./lib/ feature_test/feature4_recordtype.s -o feature_test/feature4_recordtype.o
#ld -m elf_i386 feature_test/feature4_recordtype.o lib/libasm.a -o feature_test/feature4_recordtype

#./feature_test/feature4_recordtype
echo "---------- [  Feature 04 End  ] ----------"

echo "---------- [ Feature 05 Start ] ----------"
./mpc -acpt feature_test/feature5_procfuncdecl.pas feature_test/feature5_procfuncdecl.s
./standard_mpc -pt feature_test/feature5_procfuncdecl.pas feature_test/feature5_procfuncdecl_correct.s

diff feature_test/feature5_procfuncdecl.token feature_test/feature5_procfuncdecl_correct.token
diff feature_test/feature5_procfuncdecl.parse feature_test/feature5_procfuncdecl_correct.parse

#ld -f elf -i ./lib/ feature_test/feature5_procfuncdecl.s -o feature_test/feature5_procfuncdecl.o
#ld -m elf_i386 feature_test/feature5_procfuncdecl.o lib/libasm.a -o feature_test/feature5_procfuncdecl

#./feature_test/feature5_procfuncdecl
echo "---------- [  Feature 05 End  ] ----------"

echo "---------- [ Feature 06 Start ] ----------"
./mpc -acpt feature_test/feature6_compstmt.pas feature_test/feature6_compstmt.s
./standard_mpc -pt feature_test/feature6_compstmt.pas feature_test/feature6_compstmt_correct.s

diff feature_test/feature6_compstmt.token feature_test/feature6_compstmt_correct.token
diff feature_test/feature6_compstmt.parse feature_test/feature6_compstmt_correct.parse

#ld -f elf -i ./lib/ feature_test/feature6_compstmt.s -o feature_test/feature6_compstmt.o
#ld -m elf_i386 feature_test/feature6_compstmt.o lib/libasm.a -o feature_test/feature6_compstmt

#./feature_test/feature6_compstmt
echo "---------- [  Feature 06 End  ] ----------"

echo "---------- [ Feature 07 Start ] ----------"
./mpc -acpt feature_test/feature7_ifstmt.pas feature_test/feature7_ifstmt.s
./standard_mpc -pt feature_test/feature7_ifstmt.pas feature_test/feature7_ifstmt_correct.s

diff feature_test/feature7_ifstmt.token feature_test/feature7_ifstmt_correct.token
diff feature_test/feature7_ifstmt.parse feature_test/feature7_ifstmt_correct.parse

#ld -f elf -i ./lib/ feature_test/feature7_ifstmt.s -o feature_test/feature7_ifstmt.o
#ld -m elf_i386 feature_test/feature7_ifstmt.o lib/libasm.a -o feature_test/feature7_ifstmt

#./feature_test/feature7_ifstmt
echo "---------- [  Feature 07 End  ] ----------"

echo "---------- [ Feature 08 Start ] ----------"
./mpc -acpt feature_test/feature8_casestmt.pas feature_test/feature8_casestmt.s
./standard_mpc -pt feature_test/feature8_casestmt.pas feature_test/feature8_casestmt_correct.s

diff feature_test/feature8_casestmt.token feature_test/feature8_casestmt_correct.token
diff feature_test/feature8_casestmt.parse feature_test/feature8_casestmt_correct.parse

#ld -f elf -i ./lib/ feature_test/feature8_casestmt.s -o feature_test/feature8_casestmt.o
#ld -m elf_i386 feature_test/feature8_casestmt.o lib/libasm.a -o feature_test/feature8_casestmt

#./feature_test/feature8_casestmt
echo "---------- [  Feature 08 End  ] ----------"

echo "---------- [ Feature 09 Start ] ----------"
./mpc -acpt feature_test/feature9_repeatstmt.pas feature_test/feature9_repeatstmt.s
./standard_mpc -pt feature_test/feature9_repeatstmt.pas feature_test/feature9_repeatstmt_correct.s

diff feature_test/feature9_repeatstmt.token feature_test/feature9_repeatstmt_correct.token
diff feature_test/feature9_repeatstmt.parse feature_test/feature9_repeatstmt_correct.parse

#ld -f elf -i ./lib/ feature_test/feature9_repeatstmt.s -o feature_test/feature9_repeatstmt.o
#ld -m elf_i386 feature_test/feature9_repeatstmt.o lib/libasm.a -o feature_test/feature9_repeatstmt

#./feature_test/feature9_repeatstmt
echo "---------- [  Feature 09 End  ] ----------"

echo "---------- [ Feature 10 Start ] ----------"
./mpc -acpt feature_test/feature10_forstmt.pas feature_test/feature10_forstmt.s
./standard_mpc -pt feature_test/feature10_forstmt.pas feature_test/feature10_forstmt_correct.s

diff feature_test/feature10_forstmt.token feature_test/feature10_forstmt_correct.token
diff feature_test/feature10_forstmt.parse feature_test/feature10_forstmt_correct.parse

#ld -f elf -i ./lib/ feature_test/feature10_forstmt.s -o feature_test/feature10_forstmt.o
#ld -m elf_i386 feature_test/feature10_forstmt.o lib/libasm.a -o feature_test/feature10_forstmt

#./feature_test/feature10_forstmt
echo "---------- [  Feature 10 End  ] ----------"

