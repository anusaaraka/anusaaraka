

(defrule golden0
(declare (salience 5000))
(id-root ?id golden)
(id-word =(+ ?id 1)  opportunity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  golden.clp    golden0   "  ?id "  sunaharA)" crlf))
)
;He wasted his golden opportunity to play in the national team . 
; Added by Shirisha Manju


(defrule golden1
(declare (salience 4900))
(id-root ?id golden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sone_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  golden.clp 	golden0   "  ?id "  sone_kA)" crlf))
)
; Modified by shirisha Manju (id-wsd_root_mng "sunaharA" as "sone_kA") ---- suggested by Sheetal


;"golden","Adj","1.sunaharA"
;I bought a golden bangle for my mother.
;--"2.kImawI"
;I missed a golden chance of meeting Bill Gates when he visited India.
;--"3.behawarIna/bahuwa_acCA"
;Raj's contribution to the Indian cinema is golden.
;
;
