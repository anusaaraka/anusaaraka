
(defrule disgust0
(declare (salience 4000))
(id-root ?id disgust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disgust.clp 	disgust0   "  ?id "  GqNA )" crlf))
)

;"disgust","N","1.GqNA"
;The very thought of taking exams fills me with disgust.
;
(defrule disgust1
(declare (salience 4900))
(id-root ?id disgust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disgust.clp 	disgust1   "  ?id "  GqNA_kara )" crlf))
)

;"disgust","VT","1.GqNA_karanA"
;The very thought of taking exams disgusts me.
;

;@@@ Added by Pramila(BU) on 03-01-2014
;She walked out in disgust.        ;cald
;वह गुस्से में चली गई.
(defrule disgust2
(declare (salience 5000))
(id-root ?id disgust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id1 ?id)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gussA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disgust.clp 	disgust2   "  ?id "  gussA )" crlf))
)
