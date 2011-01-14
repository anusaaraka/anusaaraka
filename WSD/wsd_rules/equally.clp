
(defrule equally0
(declare (salience 5000))
(id-root ?id equally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equally.clp 	equally0   "  ?id "  uwanA_hI )" crlf))
)

(defrule equally1
(declare (salience 4900))
(id-root ?id equally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equally.clp 	equally1   "  ?id "  samAna_rUpa_se )" crlf))
)

;"equally","Adj","1.samAna_rUpa_se"
;Health &&  knowledge  both  the  things are equally important.
;Banana's  were  equally  distributed among all the students.
;
;
