
(defrule lapse0
(declare (salience 5000))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse0   "  ?id "  cUka )" crlf))
)

;"lapse","N","1.cUka"
;He will not pardon you for this lapse.
;This lapse on your part may ruin your career.
;--"2.samApwi"
;With the lapse of time he may overcome his griet.
;
(defrule lapse1
(declare (salience 4900))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse1   "  ?id "  raxxa_ho_jA )" crlf))
)

;"lapse","V","1.raxxa_ho_jAnA"
;The House allowed the bill to lapse.
;--"2.avanawa_ho_jAnA"
;Uncared for movements lapse into decay as time passes.

;Added by Nandini(5-4-13)
;After a lapse of six months we met up again.[OLD]
;CaH mahInoM ke aMwarAla ke bAxa hama Pira se mile.
(defrule lapse2
(declare (salience 5050))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 month|year|day)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwarAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse2   "  ?id "  aMwarAla )" crlf))
)

;Added by Nandini(5-4-13)
;With the lapse of time he may overcome his grief.[hinkhoj]
;samaya ke biwane ke sAWa vaha apane xuKa se uBara sakawA hE.
(defrule lapse3
(declare (salience 5050))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 time)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biwane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse3   "  ?id "  biwane )" crlf))
)

;Added by Nandini(5-4-13)
;This custom had lapsed over the years.[OLD]
;yaha rIwi varRoM se baMxa_ho gaI WI.
(defrule lapse4
(declare (salience 4950))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMxa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse4   "  ?id "  baMxa_ho_jA )" crlf))
)

;Added by Nandini(5-4-13)
;She lapsed into silence again.
;vaha Pira se vismqwi ke aMxara meM CalI gaI.
(defrule lapse5
(declare (salience 4950))
(id-root ?id lapse)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cale_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lapse.clp 	lapse5   "  ?id "  Cale_jA )" crlf))
)

