
(defrule xerox0
(declare (salience 5000))
(id-root ?id xerox)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawilipi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  xerox.clp 	xerox0   "  ?id "  prawilipi )" crlf))
)

;"xerox","Adj","1.prawilipi"
;He bought a new Xerox machine.
;
(defrule xerox1
(declare (salience 4900))
(id-root ?id xerox)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawilipi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  xerox.clp 	xerox1   "  ?id "  prawilipi )" crlf))
)

;"xerox","N","1.prawilipi"
;Please get a xerox of this paper.
;
(defrule xerox2
(declare (salience 4800))
(id-root ?id xerox)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawilipi_nikAla))
(assert (kriyA_id-object_viBakwi ?id kI));Added by sheetal (03-01-2010)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  xerox.clp 	xerox2   "  ?id "  prawilipi_nikAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  xerox.clp     xerox2   "  ?id "  kI )" crlf))
)

;"xerox","V","1.prawilipi_nikAlanA"
;I asked my friend to xerox the notes.
;
