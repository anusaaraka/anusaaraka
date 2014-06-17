
(defrule empty0
(declare (salience 5000))
(id-root ?id empty)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empty.clp 	empty0   "  ?id "  KAlI )" crlf))
)

;default_sense && from_list(category,adj|adj_comp|adj_super)	SUnya	0
;"empty","Adj","1.SUnya"
;He left the empty jug on the table.
;
(defrule empty1
(declare (salience 4900))
(id-root ?id empty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empty.clp 	empty1   "  ?id "  KAlI_kara )" crlf))
)

(defrule empty2
(declare (salience 4000))
(id-root ?id empty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empty.clp 	empty2   "  ?id "  KAlI_ho )" crlf))
)

;"empty","VT","1.KAlI_karanA"
;Ram emptied the overloaded box.
;

;@@@ Added by Pramila(BU) on 28-01-2014
;The Ganga empties into the way of Bengal.       ;shiksharthi
;गंगा बंगाल की खाड़ी में जा गिरती है.
(defrule empty3
(declare (salience 5000))
(id-root ?id empty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empty.clp 	empty3   "  ?id "  jA_gira )" crlf))
)


;@@@ Added by Pramila(BU) on 28-01-2014
;She emptied out her purse.       ;shiksharthi
;उसने अपना पर्स खाली कर दिया.
(defrule empty4
(declare (salience 5000))
(id-root ?id empty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KAlI_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " empty.clp	empty4  "  ?id "  " ?id1 "  KAlI_kara_xe  )" crlf))
)

