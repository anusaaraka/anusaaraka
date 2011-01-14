
;Added by Meena(16.9.10)
;In the first experiment, a large magnet and a small magnet are weighed separately, and then one magnet is hung from the pan of the top balance so that it is directly above the other magnet.
(defrule directly_above0
(declare (salience 5000))
(id-root ?id directly)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(- ?id 1) in )
(id-word =(+ ?id 1) above)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  =(+ ?id 1) ke_TIka_Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " directly.clp  directly_above0  "  ?id "  " (+ ?id 1) "  TIka_Upara  )" crlf))
)

