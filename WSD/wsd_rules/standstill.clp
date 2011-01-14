;Added by Meena(23.10.09)
;The standstill alert ended.
(defrule standstill0
(declare (salience 5000))
(id-root ?id standstill)
?mng <-(meaning_to_be_decided ?id)
(samAsa ?id1 ?id)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gawiroXa));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  standstill.clp      standstill0   "  ?id "  gawiroXa )" crlf))
)

