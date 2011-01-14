
(defrule new0
(declare (salience 5000))
(id-root ?id new)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id news )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Kabara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  new.clp  	new0   "  ?id "  Kabara )" crlf))
)

;"news","N","1.Kabara"
;I never miss the evening news.
;
(defrule new1
(declare (salience 4900))
(id-root ?id new)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nayA-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  new.clp 	new1   "  ?id "  nayA- )" crlf))
)

(defrule new2
(declare (salience 4800))
(id-root ?id new)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  new.clp 	new2   "  ?id "  nayA )" crlf))
)

;"new","Adj","1.nayA/navIna/nUwana"
;This is a new shirt.
;
;