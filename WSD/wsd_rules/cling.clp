
(defrule cling0
(declare (salience 5000))
(id-root ?id cling)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id clinging )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SarIra_se_cipakA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cling.clp  	cling0   "  ?id "  SarIra_se_cipakA_huA )" crlf))
)

;"clinging","Adj","1.SarIra_se_cipakA_huA"
;She was wearing a clinging dress.
;--"2.BAvAwmaka_rUpa_se_nirBara"
;Her clinging son can never leave her.
;
(defrule cling1
(declare (salience 4900))
(id-root ?id cling)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasakara_lipata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cling.clp 	cling1   "  ?id "  kasakara_lipata_jA )" crlf))
)

;"cling","V","1.kasakara_lipata_jAnA"
;The child clinged to its mother.
;--"2.bane_rahanA"
;The smell of petrol clings for a long time.
;--"3. cipake_rahanA"
;His parents still cling to old ideas.
;--"4.tike_rahanA"
;Don't cling to the railings.
;
;
