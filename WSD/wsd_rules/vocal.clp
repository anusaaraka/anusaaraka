
(defrule vocal0
(declare (salience 5000))
(id-root ?id vocal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAcika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vocal.clp 	vocal0   "  ?id "  vAcika )" crlf))
)

;"vocal","Adj","1.vAcika"
(defrule vocal1
(declare (salience 4900))
(id-root ?id vocal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMTa_saMgIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vocal.clp 	vocal1   "  ?id "  kaMTa_saMgIwa )" crlf))
)

;"vocal","N","1.kaMTa_saMgIwa"
;This piece of music has Lata on vocals.
;
