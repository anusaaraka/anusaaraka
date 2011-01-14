
(defrule sod0
(declare (salience 5000))
(id-root ?id sod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasyAkAraka_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sod.clp 	sod0   "  ?id "  samasyAkAraka_vyakwi )" crlf))
)

;"sod","N","1.samasyAkAraka_vyakwi"
;That stupid sod always created problems for me.
;--"2.GAsa_kA_mExAna"
;The area under the sod is eaten up by the domestic animals.
;
(defrule sod1
(declare (salience 4900))
(id-root ?id sod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAsa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sod.clp 	sod1   "  ?id "  GAsa_lagA )" crlf))
)

;"sod","V","1.GAsa_lagAnA"
;Sod the fields.
;
