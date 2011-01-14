
(defrule pilot0
(declare (salience 5000))
(id-root ?id pilot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAyogika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pilot.clp 	pilot0   "  ?id "  prAyogika )" crlf))
)

;"pilot","Adj","1.prAyogika"
;A pilot editon of a new language course was introduced recently.
;
(defrule pilot1
(declare (salience 4900))
(id-root ?id pilot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vimAna_cAlaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pilot.clp 	pilot1   "  ?id "  vimAna_cAlaka )" crlf))
)

;"pilot","N","1.vimAna_cAlaka"
;My cousin is a fighter pilot.
;--"2.jahAjZarAna"
;The pilot of the canal is very experienced.
;
(defrule pilot2
(declare (salience 4800))
(id-root ?id pilot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pilot.clp 	pilot2   "  ?id "  calA )" crlf))
)

;"pilot","V","1.calAnA"
;He was able to pilot the plane through the narrow valley.
;--"2.prayoga_karanA"
;CBSE Board is piloting a new English course.
;
