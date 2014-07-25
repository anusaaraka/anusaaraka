;@@@ Added by jagriti(14.2.2014)
;He always wears a sack.[rajpal]
;वह हमेशा ढीला-ढाला कुर्ता पहनता है . 
(defrule sack2
(declare (salience 5000))
(id-root ?id sack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 wear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DIlA-DAlA_kurwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sack.clp 	sack2   "  ?id "  DIlA-DAlA_kurwA)" crlf))
)
;@@@ Added by jagriti(14.2.2014)
;The robbers sacked his house in night.[rajpal]
;डाकुओं ने रात में उसका घर लूट लिया . 
(defrule sack3
(declare (salience 5000))
(id-root ?id sack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 robber|invader)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lUta_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sack.clp 	sack3   "  ?id "  lUta_le)" crlf))
)
;....default rule....
(defrule sack0
(declare (salience 100))
(id-root ?id sack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id borA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sack.clp 	sack0   "  ?id "  borA )" crlf))
)

;"sack","N","1.borA/borI"
;The sack split && the rice poured out.
;--"2.lUtapAta"
;The sack of Troy.
;
(defrule sack1
(declare (salience 100))
(id-root ?id sack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sack.clp 	sack1   "  ?id "  nikAla_xe )" crlf))
)

;"sack","V","1.nikAla_xenA"
;He is sacked for incompetence.
;--"2.lUtanA"
;They sacked the town.
;The surface of the room is rough, I want a sander.
;
