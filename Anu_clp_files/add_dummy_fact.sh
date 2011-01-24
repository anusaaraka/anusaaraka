grep -R "dummy_facts" vibakthi.clp| sed "s/(deffacts dummy_facts/& \n ($1)/" < vibakthi.clp >vibakthi_tmp.clp
perl -i -pe 's/^ \n//g' vibakthi_tmp.clp 
mv vibakthi_tmp.clp vibakthi.clp
grep -R "dummy_facts" agreement.clp| sed "s/(deffacts dummy_facts/& \n ($1)/" < agreement.clp >agreement_tmp.clp
mv agreement_tmp.clp  agreement.clp
grep -R "dummy_facts" hindi_meaning.clp| sed "s/(deffacts dummy_facts/& \n ($1)/" < hindi_meaning.clp >hindi_meaning_tmp.clp
mv hindi_meaning_tmp.clp  hindi_meaning.clp
grep -R "dummy_facts" pada_ids.clp| sed "s/(deffacts dummy_facts/& \n ($1)/" < pada_ids.clp >pada_ids_tmp.clp
mv pada_ids_tmp.clp  pada_ids.clp
grep -R "dummy_facts" prepare_apertium_input.clp| sed "s/(deffacts dummy_facts/& \n ($1)/" < prepare_apertium_input.clp >prepare_apertium_input_tmp.clp
mv prepare_apertium_input_tmp.clp  prepare_apertium_input.clp
grep -R "dummy_facts" hindi_position.clp|sed "s/(deffacts dummy_facts/& \n ($1)/" <hindi_position.clp >hindi_position_tmp.clp
mv hindi_position_tmp.clp  hindi_position.clp
grep -R "dummy_facts" GNP_agreement.clp|sed "s/(deffacts dummy_facts/& \n ($1)/" <GNP_agreement.clp >GNP_agreement_tmp.clp
mv GNP_agreement_tmp.clp  GNP_agreement.clp
grep -R "dummy_facts" hindi_sent_reorder.clp|sed "s/(deffacts dummy_facts/& \n ($1)/" <hindi_sent_reorder.clp >hindi_sent_reorder_tmp.clp
mv hindi_sent_reorder_tmp.clp  hindi_sent_reorder.clp
grep -R "dummy_facts" ol_hindi_sent_reorder.clp|sed "s/(deffacts dummy_facts/& \n ($1)/" <ol_hindi_sent_reorder.clp >ol_hindi_sent_reorder_tmp.clp
mv ol_hindi_sent_reorder_tmp.clp  ol_hindi_sent_reorder.clp
