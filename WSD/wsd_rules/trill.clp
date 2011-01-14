
(defrule trill0
(declare (salience 5000))
(id-root ?id trill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpiwa_Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trill.clp 	trill0   "  ?id "  kaMpiwa_Xvani )" crlf))
)

;"trill","N","1.kaMpiwa_Xvani"
;I could hear the trill in the bird's song.
;
(defrule trill1
(declare (salience 4900))
(id-root ?id trill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMpiwa_Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trill.clp 	trill1   "  ?id "  kaMpiwa_Xvani )" crlf))
)

;"trill","VI","1.kaMpiwa_Xvani"
;The birds trilled in the forest.
;
