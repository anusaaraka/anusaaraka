(defrule advent0
(declare (salience 5000))
(id-root ?id advent)
?mng<-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Agamana))
(if ?*debug_flag* then
(printout wsd_fp"(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " advent.clp   advent0  "  ?id " Agamana  )"crlf))     
)
;Added by samapika(3.3.10)
;Life of Britain was transformed by the advent of the steam engine .
;#britana kA jIvana BApa_se_calane_vAlA iMjana ke Agamana se baxala xiyA gayA WA
