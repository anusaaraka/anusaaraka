
(defrule pamper0
(declare (salience 5000))
(id-root ?id pamper)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pampered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xulArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pamper.clp  	pamper0   "  ?id "  xulArA )" crlf))
)

;"pampered","Adj","1.xulArA/lAdZalA"
;He is a pampered child of rich parents.
;vaha amIra mAwA-piwA kA eka lAdZalA baccA hE.
;
(defrule pamper1
(declare (salience 4900))
(id-root ?id pamper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_lAdZa_pyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pamper.clp 	pamper1   "  ?id "  bahuwa_lAdZa_pyAra_kara )" crlf))
)

;"pamper","VT","1.bahuwa_lAdZa_pyAra_karanA"
;Being the youngest son he is pampered by everyone.
;sabase warUNa hone ke kArana sabane use bahuwa lAdZa pyAra kiyA hE.
;
;