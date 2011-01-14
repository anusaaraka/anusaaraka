
(defrule national0
(declare (salience 5000))
(id-root ?id national)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rARtriya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  national.clp 	national0   "  ?id "  rARtriya )" crlf));inconsistency in the mng in assert & print statement has been corrected by Sukhada (15.3.10))
)
; instead cat coarse( adj)  used relation (viSeRya-viSeRaNa)
;"national","Adj","1.rARtrIya"
;The national flower of India is lotus.    by Meena
;
(defrule national1
(declare (salience 4900))
(id-root ?id national)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAgarika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  national.clp 	national1   "  ?id "  nAgarika )" crlf))
)
; instead cat coarse( noun)  used relation (viSeRya-viSeRaNa)
;"national","N","1.nAgarika"
;All the foreign nationals have been asked to produce their passports.
;
