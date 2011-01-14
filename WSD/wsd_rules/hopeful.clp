
(defrule hopeful0
(declare (salience 5000))
(id-root ?id hopeful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hopeful.clp 	hopeful0   "  ?id "  ASApUrNa )" crlf))
)

;"hopeful","Adj","1.ASApUrNa"
;BiKArI ne xAnaxAwA ke sAmane 'hopeful'(ASApUrNa)xxaRti se hAWa PElAye.
;
(defrule hopeful1
(declare (salience 4900))
(id-root ?id hopeful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASAvAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hopeful.clp 	hopeful1   "  ?id "  ASAvAna )" crlf))
)

;"hopeful","N","1.ASAvAna"
;vaha kensara rogI apane TIka hone ke prawi 'hopeful'(ASAvAna)hE.
;
