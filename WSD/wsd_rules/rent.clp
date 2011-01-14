
(defrule rent0
(declare (salience 5000))
(id-root ?id rent)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 take)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent0   "  ?id "  kirAyA )" crlf))
)

(defrule rent1
(declare (salience 4900))
(id-root ?id rent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent1   "  ?id "  xarAra )" crlf))
)

;"rent","N","1.xarAra"
;There is a rent in his jacket.
;--"2.kirAyA"
;Monthly rent of his house is Rs.2000.  
;
(defrule rent2
(declare (salience 4800))
(id-root ?id rent)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent2   "  ?id "  kirAye_para_xe )" crlf))
)

(defrule rent3
(declare (salience 4700))
(id-root ?id rent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent3   "  ?id "  kirAye_para_le )" crlf))
)

;"rent","VTI","1.kirAye_para_xenA[lenA]"
;There are some apartments for rent in these buildings.
;--"2.kirAyA_lekara_prayoga_karane_kA_aXikAra_praxAna_karanA"
;His house to be leased or let for rent.  
;Did you buy your video or is it rented? 
;
