
(defrule nervous0
(declare (salience 5000))
(id-root ?id nervous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASaMkiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nervous.clp 	nervous0   "  ?id "  ASaMkiwa )" crlf))
)

;default_sense && category=adjective	vyagra	0
(defrule nervous1
(declare (salience 4900))
(id-root ?id nervous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GabarAyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nervous.clp 	nervous1   "  ?id "  GabarAyA_huA )" crlf))
)

;"nervous","Adj","1.GabarAyA_huA"
;He was nervous about his results.
;--"2.mAnasika
;She had a nervous breakdown.
;
;
