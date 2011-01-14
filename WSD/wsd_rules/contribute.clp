
(defrule contribute0
(declare (salience 5000))
(id-root ?id contribute)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vajaha_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " contribute.clp	contribute0  "  ?id "  " ?id1 "  vajaha_bana  )" crlf))
)

;His excessive drinking(alcohol) contributed to his downfall.
;jZyAxA pInA usake pawana kA kAraNa banA
(defrule contribute1
(declare (salience 4900))
(id-root ?id contribute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahayoga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contribute.clp 	contribute1   "  ?id "  sahayoga_xe )" crlf))
)

;"contribute","VT","1.sahayoga_xenA"
;His work has contributed new information on a difficult problem.
;--"2.sahAyawA_karanA/caMxA_xenA"  
;You should contribute old clothes for the victims of flood.
;Contribute some money to the charity collection.
;--"3.BAga_lenA"
;The chairman encouraged everyone to contribute to the discussion.
;--"4.prakASana_hewu_xenA"  
;She contributes small poems regularly to her school magazine.
;
;
