
(defrule peck0
(declare (salience 5000))
(id-root ?id peck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caMcu_prahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peck.clp 	peck0   "  ?id "  caMcu_prahAra )" crlf))
)

;"peck","N","1.caMcu_prahAra"
;I had purchased 2 pecks of sugar.
;
(defrule peck1
(declare (salience 4900))
(id-root ?id peck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id coMca_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peck.clp 	peck1   "  ?id "  coMca_mAra )" crlf))
)

;"peck","V","1.coMca_mAranA"
;Birds are pecking on the trunk of the trees.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 8-2-2014
;He pecked her on the cheek as he went out. [OALD]
;उसने उसके गाल पर चूमा जैसे वो बाहर गया .
(defrule peck2
(declare (salience 5200))
(id-root ?id peck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-on_saMbanXI  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 cheek|hand|forehead)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peck.clp 	peck2   "  ?id "  cUma )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 8-2-2014
;He gave her a friendly peck on the cheek. [OALD]
;उसने उसके गाल पर दोस्ताना चुम्बन दिया .
(defrule peck3
(declare (salience 5200))
(id-root ?id peck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-root ?id1 cheek|hand|forehead)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cumbana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peck.clp 	peck3   "  ?id "  cumbana )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 8-2-2014
;Her son pecked at his food and said he wasn't hungry. [M-W]
;उसके बेटे ने खाना  थोड़ा ख्या और बोला कि वह भूखा नहीं है .
(defrule peck4
(declare (salience 5200))
(id-root ?id peck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id1)
(id-root ?id1 food|plate|meal|dinner|linch|breakfast|brunch)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 WodZA_KAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peck.clp  peck4  "  ?id "  " ?id1 "  WodZA_KAyA  )" crlf))
)
