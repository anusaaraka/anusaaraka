
(defrule valedictory0
(declare (salience 5000))
(id-root ?id valedictory)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASIrvAxAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  valedictory.clp 	valedictory0   "  ?id "  ASIrvAxAwmaka )" crlf))
)

;"valedictory","Adj","1.ASIrvAxAwmaka"
;The students stayed for the valedictory function
;
(defrule valedictory1
(declare (salience 4900))
(id-root ?id valedictory)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasWAna_ke_samaya_kA_svaswivAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  valedictory.clp 	valedictory1   "  ?id "  prasWAna_ke_samaya_kA_svaswivAxa )" crlf))
)

;"valedictory","N","1.prasWAna_ke_samaya_kA_svaswivAxa"
;The student's leader spoke in their valedictory
;
