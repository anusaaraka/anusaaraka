;Modified hindi meaning from "bahuwa_jZyaxA"  to  "burI_waraha_se"
;Added by Meena(20.4.10)
;She wept bitterly at the news.
;He is bitterly disappointed  not to get the job.
(defrule bitterly0
(declare (salience 5000))
;(id-root ?id bitter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bitterly)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bitterly.clp    bitterly0   "  ?id "  burI_waraha_se )" crlf))
)


