
(defrule same0
(declare (salience 5000))
(id-root ?id same)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) very )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  same.clp 	same0   "  ?id "  vahI )" crlf))
)

(defrule same1
(declare (salience 4900))
(id-root ?id same)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  same.clp 	same1   "  ?id "  vahI )" crlf))
)

(defrule same2
(declare (salience 4800))
(id-root ?id same)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  same.clp 	same2   "  ?id "  samAna )" crlf))
)

;"same","Adj","1.samAna/saxqSa"
;Handwriting of Priya && Vidushi is just same.
;
(defrule same3
(declare (salience 4700))
(id-root ?id same)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  same.clp 	same3   "  ?id "  vahI )" crlf))
)

;"same","Pron","1.vahI"
;I will do the same again.
;

(defrule same4
(declare (salience 4800))
(id-root ?id same)
(id-word =(- ?id 1) the)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  same.clp    same4   "  ?id "  yaha )" crlf))
)

