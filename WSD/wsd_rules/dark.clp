
(defrule dark0
(declare (salience 5000))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) after)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark0   "  ?id "  aMXerA )" crlf))
)


; We reached after dark.
(defrule dark1
(declare (salience 4900))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 get|be) ;Added by 'be' to the list and changed the fact (id-word) to (id-root)by sheetal. (2-01-10);It was so dark that I could not see anything .
(or (id-cat ?id adjective|adjective_comparative|adjective_superlative)(id-cat_coarse ?id adjective)) ;Added cat_coarse fact by Roja (11-10-11) for sd-pipeline purpose.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark1   "  ?id "  aMXerA )" crlf))
)

(defrule dark2
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark2   "  ?id "  kAlA )" crlf))
)

(defrule dark3
(declare (salience 4700))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark3   "  ?id "  aMXerA )" crlf))
)

;"dark","N","1.aMXerA"
;The powers of darkness
;He moved off into the darkness
;He was in the dark concerning their intentions
;--"2.sAzvalA"
;
;
