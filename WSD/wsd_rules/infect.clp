
(defrule infect0
(declare (salience 5000))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUwa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect0   "  ?id "  CUwa_lagA )" crlf))
)

(defrule infect1
(declare (salience 4900))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUwa_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect1   "  ?id "  CUwa_laga )" crlf))
)

;"infect","VT","1.CUwa_lagAnA[laganA]"
;Your children have infected you with this bead cold
;


;@@@ Added by Prachi Rathore[20-1-14]
;It is not possible to infect another person through kissing.[oald]
;किसी और व्यक्ति को चुम्बन के द्वारा संक्रमित करना सम्भव नहीं है . 
(defrule infect2
(declare (salience 5500))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkramiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect2   "  ?id "  saMkramiwa_kara )" crlf))
)


;@@@ Added by Prachi Rathore[20-1-14]
;people infected with HIV[oald]
;एच आई वीई से संक्रमित लोग. 
(defrule infect3
(declare (salience 5500))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkramiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect3   "  ?id "  saMkramiwa )" crlf))
)


;@@@ Added by Prachi Rathore[20-1-14]
;She infected the children with her enthusiasm for music.[oald]
;उसने सङ्गीत के लिये उसके उत्साह से बच्चों को प्रभावित किया .
(defrule infect4
(declare (salience 5700))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 enthusiasm|laughter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect4   "  ?id "  praBAviwa_kara )" crlf))
)


;@@@ Added by Prachi Rathore[20-1-14]
;The whole room was soon infected by his laughter.[oald]
;पूरा कमरा उसकी हँसी से शीघ्र प्रभावित हो गया था . 
(defrule infect5
(declare (salience 5700))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 enthusiasm|laughter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect5   "  ?id "  praBAviwa_ho )" crlf))
)
