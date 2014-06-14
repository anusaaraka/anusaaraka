
(defrule peg0
(declare (salience 5000))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg0   "  ?id "  KUztI )" crlf))
)

;"peg","N","1.KUztI"
;When I hang a picture on the wall, I hammer in a strong thin peg to hold it in place.
;
(defrule peg1
(declare (salience 4900))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg1   "  ?id "  KUztI_lagA )" crlf))
)

;"peg","V","1.KUztI_lagAnA"
;During a storm the people have to peg their tents firmly to the ground.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;They decided to use the anniversary as the peg for a TV documentary. [cambridge]
;उन्होंने वर्षगाँठ का दूरदर्शन के वृत्तचित्र के लिए उपयोग करने का फैसला किया . 
(defrule peg2
(declare (salience 5500))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-as_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg2   "  ?id "  kAraNa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;Make sure the tarpaulin is securely pegged down.  [cambridge]
;निश्चित कीजिए कि तम्बू सुरक्षित रूप से गाढ़ा हुआ है .
(defrule peg3
(declare (salience 5500))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gADZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peg.clp  peg3  "  ?id "  " ?id1 "  gADZA_ho  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;I'll peg out the clothes before I go to work. [cambridge]
;मैं काम पर जाने से पहले कपड़े टाँग दूँगा .
(defrule peg4
(declare (salience 5500))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
(kriyA-object  ?id ?id2)
(id-root ?id2 clothe)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tAzga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peg.clp  peg4  "  ?id "  " ?id1 "  tAzga_xe  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;Mattingly pegged the ball to Stanley. [cambridge]
;मैट्टिंगली ने बाल स्टैन्ली कि ओर फेंका .
(defrule peg5
(declare (salience 5500))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ball)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg5   "  ?id "  PeMka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;Pay increases will be pegged at 5%. [oald]
;वेतन बढोतरी ५% पर स्थिर कि जाएंगी .
(defrule peg6
(declare (salience 5500))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWira_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg6   "  ?id "  sWira_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;Admission prices have been pegged. [oald]
;प्रवेश मूल्य स्थिर किये गए हैं .
(defrule peg7
(declare (salience 5500))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 price|cost|rate|amount)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWira_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg7   "  ?id "  sWira_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;She pegged him as a big spender. [oald]
;उसने उसे अपव्ययी के जैसा सोचा .
(defrule peg8
(declare (salience 5500))
(id-root ?id peg)
(id-word ?id pegged)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id socA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg8   "  ?id "  socA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;He was taken down a peg when an even better player joined the team.  [M-W]
;उसे महत्वहीन बनाया गया जब उससे बेहतर खिलाड़ी टीम से जुड़ा . 
(defrule peg9
(declare (salience 5600))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?verb ?id)
(kriyA-upasarga  ?verb ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mahawvahIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peg.clp  peg9  "  ?id "  " ?id1 "  mahawvahIna  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;The foreign currency is pegged to the U.S. dollar.   [M-W]
;विदेशी मुद्रा यू. एस. डौलर से सम्बन्धित है .
(defrule peg10
(declare (salience 5600))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sambanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg10   "  ?id "  sambanXiwa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;The salesman had me pegged in a matter of minutes.   [M-W]
;सेल्समैन मुझे मिनटों में समझ गया .
(defrule peg11
(declare (salience 5600))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-preraka_kriyA  ?id ?id1)
(kriyA-prayojya_karwA  ?id ?)
(id-root ?id1 have)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg11   "  ?id "  samaJa_jA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;He sat there pegging away at his homework.  [M-W]
;वह वहाँ बैठा अपने गृहकार्य पर कड़ी मेहनत करता हुआ .
(defrule peg12
(declare (salience 5600))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peg.clp  peg12  "  ?id "  " ?id1 "  kadZI_mehanawa_kara  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;He doesn't want to peg out because of somebody else's mistakes. [M-W]
;वह किसी और की गलती के कारण मरना नहीं चाहता .
(defrule peg13
(declare (salience 5400))
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peg.clp  peg13  "  ?id "  " ?id1 "  mara  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
(defrule peg14
(id-root ?id peg)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peg.clp 	peg14   "  ?id "  KUztI )" crlf))
)

