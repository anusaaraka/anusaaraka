
(defrule counsel0
(declare (salience 5000))
(id-root ?id counsel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id counselling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id salAha_xenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  counsel.clp  	counsel0   "  ?id "  salAha_xenA )" crlf))
)

;"counselling","N","1.salAha_xenA"
;P.R.O. has opened a student counselling centre.
;
(defrule counsel1
(declare (salience 4900))
(id-root ?id counsel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAmarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counsel.clp 	counsel1   "  ?id "  parAmarSa )" crlf))
)

(defrule counsel2
(declare (salience 4800))
(id-root ?id counsel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id salAha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  counsel.clp 	counsel2   "  ?id "  salAha_xe )" crlf))
)

;"counsel","VT","1.salAha_xenA"
;He is a psychiatrist,who counsels drug addicts.
;
;
