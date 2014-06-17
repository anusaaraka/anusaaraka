
;@@@ Added by Anita-30.11.2013
;It's not brilliant but it's worth a read. [Cambridge dictionary]
;यह उत्कृष्ट नहीं है, लेकिन पढ़ने लायक है ।
;The book is a good read.
;किताब पढ़ना अच्छा है ।
(defrule read0
(declare (salience 10))
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paDZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  read.clp  	read0   "  ?id "  paDZanA )" crlf))
)

;"reading","N","1.paDZanA"
;He is a man of good reading.  
;--"2.vAcana_paTana"   
;Children should always do loud reading. 
;--"3.kisI_mItara_dAyala_Axi_xvArA_cihniwa_saMKyA"  
;He has come for water meter reading.  

;"read","VTI","1.paDZanA"
;We should teach children how to read && write. 
;He read a story to us.
;I read about the train accident in today's paper. 
;--"2.samaJanA"    
;A driver must be able to read traffic signs. 
;--"3.aXyayana_karanA"  
;He is reading for a mathematics degree at Oxford. 
;--"4.xeKanA"
;I offered my hand to the astrologer to read it. 
;--"5.xiKAnA"   
;The meter reads 4895 units.
;--"6.arWa_raKanA"     
;The sign reads,'Keep Left'. 

;@@@ Added by Anita-30.11.2013
;He read out the names of all the winners. [Cambridge Dictionary]
;उसने सभी जीतने वालों के नाम पढ़कर सुनाए ।
(defrule read1
(declare (salience 4850))
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 paDZa_kara_sunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  read.clp 	read3   "?id ?id1"  paDZa_kara_sunA )" crlf))
)

;@@@ Added by Anita-30.11.2013
;Her latest novel reads well. [Cambridge Dictionary]
;उसका नया उपन्यास पढ़ने में अच्छा है ।
(defrule read2
(declare (salience 4800))
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 well)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 paDZane_meM_acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  read.clp 	read2   "?id " "?id1"  paDZane_meM_acCA )" crlf))
)
;@@@ Added by Anita-30.11.2013
;He is a man of good reading.[old clp sentence-Hinkhoj Dictionary]
;वह एक सुपठित व्यक्ति है ।
(defrule read3
(declare (salience 4950))
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reading)
(id-word ?id1 man|woman|boy|girl)
(viSeRya-viSeRaNa  ?id ?)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id supaTiwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  read.clp  	read3   "  ?id "  supaTiwa )" crlf))
)


;-----------------------------------Default-Rules-------------------------------------

;Could I have a read of your newspaper? 
;
(defrule read_default_noun
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paDZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  read.clp       read_default_noun   "  ?id "  paDZanA )" crlf))
)


;He spent a pleasant afternoon reading a book. [Cambridge.Dictionaries Online]
;उसने पुस्तक पढ़ते हुए एक सुखद दोपहर बिताई ।
;(in this sentence Tam problem )
;I read about the family's success in the local paper. [Cambridge.Dictionaries Online]
;मैंने स्थानीय समाचार-पत्र में परिवार की सफलता के बारे में पढ़ा ।
;Your handwriting is so untidy I can not read.[Cambridge.Dictionaries Online]
;आपकी लिखावट इतनी गन्दी है इसलिए मैं पढ़ नहीं सकता हूँ ।
;Put your plastic card in the slot, and the machine will read it and identify who you are.
;खाँचे में अपने प्लास्टिक कार्ड को रखें, और मशीन इसे पढ़  और पहचान लेगी कि आप कौन हैं ।
;Some children can read by the age of four
;कुछ बच्चे चार साल की उम्र से पढ़ सकते हैं ।
(defrule read4
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(if ?*debug_flag* then
(assert (id-wsd_root_mng ?id paDZa))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  read.clp     read4   "  ?id "  paDZa )" crlf))
)
