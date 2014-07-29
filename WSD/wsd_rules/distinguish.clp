
(defrule distinguish0
(declare (salience 5000))
(id-root ?id distinguish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id distinguished )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prasixXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  distinguish.clp  	distinguish0   "  ?id "  prasixXa )" crlf))
)

;"distinguished","Adj","1.prasixXa/nAmI/prawiRTiwa/viKyAwa/uwkqRta"
;Our distinguished professor
;His distinguished bearing
;
;particle_from_- && category=verb	alaga_kara	0
;PP_null_from && category=verb	alaga_kara	0
;X can be distinguished from Y
; Changed to the following, since from gets absorbed without any meaning
(defrule distinguish1
(declare (salience 4900))
(id-root ?id distinguish)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) from )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinguish.clp 	distinguish1   "  ?id "  alaga_kara )" crlf))
)

(defrule distinguish2
(declare (salience 4800))
(id-root ?id distinguish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bexa_bawA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinguish.clp 	distinguish2   "  ?id "  Bexa_bawA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  distinguish.clp       distinguish2   "  ?id "  kA )" crlf)
)
)

;default_sense && category=verb	Bexa_nikAla	0
;"distinguish","VT","1.Bexa_nikAlanA/pahacAnanA/alaga_karanA"
;We distinguish several kinds of maple
;--"2.apane_ko_pramuKa_banAnA"
;
;
