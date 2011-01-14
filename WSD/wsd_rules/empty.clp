
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
(declare (salience 4800))
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
