
(defrule conduct0
(declare (salience 5000))
(id-root ?id conduct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMcAlana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conduct.clp 	conduct0   "  ?id "  saMcAlana )" crlf))
)

(defrule conduct1
(declare (salience 4900))
(id-root ?id conduct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conduct.clp 	conduct1   "  ?id "  calA )" crlf))
)

;"conduct","V","1.calAnA"
;You cannot conduct business if you are not enterprising. 
;
;

;@@@ Added by Preeti(11-1-14)
;She lectured the girl on her conduct. [By mail]
;usane ladakI ko usake AcaraNa para  upaxeSa/BARaNa xiyA.
(defrule conduct2
(declare (salience 5050))
(id-root ?id conduct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AcaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conduct.clp 	conduct2   "  ?id "  AcaraNa) )" crlf))
)

