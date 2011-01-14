

;Added by Meena(10.5.10)
;The box contained many books , some of which were badly damaged .
(defrule some_of_which
(declare (salience 4900))
(id-root ?id some)
?mng <-(meaning_to_be_decided ?id)
(id-word  =(+ ?id 1) of)
(id-word  =(+ ?id 2) which)
(id-cat_coarse  =(- ?id 1) noun)
(saMjFA-saMjFA_samAnAXikaraNa  =(- ?id 1) ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2)  jinameM_se_kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " some.clp some_of_which  "  ?id "  " (+ ?id 1) " " (+ ?id 2) "  jinameM_se_kuCa  )" crlf))
)





;Added by Meena(10.5.10)
;The box contained many books , some of them were badly damaged .
(defrule some_of_them
(declare (salience 4900))
(id-root ?id some)
?mng <-(meaning_to_be_decided ?id)
(id-word  =(+ ?id 1) of)
(id-word  =(+ ?id 2) them)
(id-cat_coarse  =(- ?id 1) noun)
(saMjFA-saMjFA_samAnAXikaraNa  =(- ?id 1) ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2)  unameM_se_kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " some.clp some_of_which  "  ?id "  " (+ ?id 1) " " (+ ?id 2) "  unameM_se_kuCa  )" crlf))
)







;viSeRya=officer && category=adjective	koI	100
;Evidence??
;Here are some news that you might be intrested in.
(defrule some0
(declare (salience 5000))
(id-root ?id some)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ?str)
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  some.clp 	some0   "  ?id "  WodA )" crlf))
)
;Can I offer you some wine?

;Added by Meena(19.11.09)
;It had only a tenth of the sun's mass but showed some wobbling which could be due to planets in its orbit .
(defrule some1
(declare (salience 4900))
(id-root ?id some)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  some.clp      some1   "  ?id "  kuCa )" crlf))
)



(defrule some2
(declare (salience 4900))
(id-root ?id some)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  some.clp 	some2   "  ?id "  kuCa )" crlf))
)

;Would you like some biscuits?



;Salience reduced by Meena(19.11.09)
(defrule some3
;(declare (salience 4800))
(declare (salience 0))
(id-root ?id some)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  some.clp 	some3   "  ?id "  kuCa )" crlf))
)

;"some","Det","1.kuCa"
;Please take some milk.
;
;
