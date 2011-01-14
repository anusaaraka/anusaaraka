;Added by Meena(18.02.10)  %% NEED RELOOK
;The native speakers of English do not produce a variable mishmash of words of the sort in 4 . 
(defrule of_the_sort_in0
(declare (salience 5000))
(id-root ?id sort)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the)
(id-word =(- ?id 2) of)
;(id-word =(+ ?id 1) in)
=>
(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id   =(- ?id 1)  =(- ?id 2)  =(+ ?id 1)  kI_BAzwi ))
(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id   =(- ?id 1)  =(- ?id 2)  kI_BAzwi ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sort.clp  of_the_sort0  " ?id "    "  (- ?id 1) "  " (- ?id 2) "    kI_BAzwi  )" crlf))
)



;Salience reduced by Meena(18.02.10)
(defrule sort1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id sort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sort.clp 	sort1   "  ?id "  prakAra )" crlf))
)



(defrule sort2
(declare (salience 4900))
(id-root ?id sort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sort.clp 	sort2   "  ?id "  CAzta )" crlf))
)

;"sort","V","1.CAztanA"
;I have to sort out the letters from the post.
;--"2.cunanA"
;He asked me to sort the pens which do not work.
;
;









