
(defrule worm0
(declare (salience 100))
(id-root ?id worm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worm.clp 	worm0   "  ?id "  kIdZA )" crlf))
)

;"worm","N","1.kIdZA"
;He is dissecting a worm.
;
(defrule worm1
(declare (salience 4900))
(id-root ?id worm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIde_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worm.clp 	worm1   "  ?id "  kIde_nikAla )" crlf))
)

;"worm","VI","1.kIde_nikAlanA"
;The horses should be wormed often.
;


;@@@ Added by Pramila(BU) on 22-03-2014
;Your friend suffers from worms.         ;shiksharthi
;तुम्हारा मित्र कृमिरोग से पीड़ित है.
(defrule worm2
(declare (salience 5000))
(id-root ?id worm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI  ?id1 ?id)
(id-root ?id1 suffer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqmiroga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worm.clp 	worm2   "  ?id " kqmiroga )" crlf))
)


;@@@ Added by Pramila(BU) on 22-03-2014
;He is a worm who divorced such a noble wife.         ;shiksharthi
;वह एक ऐसा नीच है जिसने  एक ऐसी कुलीन पत्नी को तलाक दिया . 
(defrule worm3
(declare (salience 5000))
(id-root ?id worm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worm.clp 	worm3   "  ?id " nIca )" crlf))
)

