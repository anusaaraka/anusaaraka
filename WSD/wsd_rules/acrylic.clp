
(defrule acrylic0
(declare (salience 5000))
(id-root ?id acrylic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekrilika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acrylic.clp 	acrylic0   "  ?id "  ekrilika )" crlf))
)

;"acrylic","Adj","1.ekrilika{wejAba_se_banA_huA}"
;We use acrylic emulsion to paint our room.
;
(defrule acrylic1
(declare (salience 4900))
(id-root ?id acrylic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekrilika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acrylic.clp 	acrylic1   "  ?id "  ekrilika )" crlf))
)

;"acrylic","N","1.ekrilika{wejAba_se_banA_huA_eka_prakAra_kA_rasAyanika_paxArWa}"
;We painted our room in oils && acrylics.
;
