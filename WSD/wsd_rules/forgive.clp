
(defrule forgive0
(declare (salience 5000))
(id-root ?id forgive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id forgiving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kRamASIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  forgive.clp  	forgive0   "  ?id "  kRamASIla )" crlf))
)

;"forgiving","Adj","1.kRamASIla"
;My mother is loving && forgiving by nature.
;
(defrule forgive1
(declare (salience 4900))
(id-root ?id forgive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forgive.clp 	forgive1   "  ?id "  mAPa_kara )" crlf))
)

;default_sense && category=verb	kRamA_kara	0
;"forgive","VT","1.kRamA_karanA"
;My mother forgave me for my mistakes.
;
;