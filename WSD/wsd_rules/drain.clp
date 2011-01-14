
(defrule drain0
(declare (salience 5000))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain0   "  ?id "  nAlI )" crlf))
)

;"drain","N","1.nAlI/pawanAlA"
;They cleaned all the drains. 
;--"2.bahAva"
;Teaching a child in a professional course causes a drain on resources.
;
(defrule drain1
(declare (salience 4900))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain1   "  ?id "  bahA_xe )" crlf))
)

(defrule drain2
(declare (salience 4800))
(id-root ?id drain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drain.clp 	drain2   "  ?id "  baha_jA )" crlf))
)

;"drain","VI","1.baha_jAnA/nikala_jAnA"
;The rain water drains into this big vat.
;--"2.KAlI_karanA[honA]"
;We drained the oil tank
;The water drained from the pipe
;Life in the camp drained him
;
