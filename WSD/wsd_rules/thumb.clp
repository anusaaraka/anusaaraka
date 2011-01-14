
(defrule thumb0
(declare (salience 5000))
(id-root ?id thumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id azgUTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thumb.clp 	thumb0   "  ?id "  azgUTA )" crlf))
)

;"thumb","N","1.azgUTA"
;--"2.aMgUTA"
;Ekalavya gave his thumb as guru dakshina to Dronacharya.
;
(defrule thumb1
(declare (salience 4900))
(id-root ?id thumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMgUTA_lagAkara_palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thumb.clp 	thumb1   "  ?id "  aMgUTA_lagAkara_palata )" crlf))
)

;"thumb","VTI","1.aMgUTA_lagAkara_palatanA{ganxA_karanA}"
;It was a well-thumbed book.
;He thumbed through the report.
;
