
(defrule crow0
(declare (salience 5000))
(id-root ?id crow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crow.clp 	crow0   "  ?id "  kOA )" crlf))
)

;"crow","N","1.kOA/kAka/kAga"
;A black bird with a harsh sound.
;
(defrule crow1
(declare (salience 4900))
(id-root ?id crow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzva_kAzva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crow.clp 	crow1   "  ?id "  kAzva_kAzva_kara )" crlf))
)

;"crow","VI","1.kAzva_kAzva_karanA/kukurU_kUM_karanA"
;The cocks crowed all morning.
;--"2.SeKI_baGAranA/dIMga_hAkanA"
;Her success is not something to crow about.
;
