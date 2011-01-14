
(defrule scaffold0
(declare (salience 5000))
(id-root ?id scaffold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id scaffolding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id maMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  scaffold.clp  	scaffold0   "  ?id "  maMca )" crlf))
)

;"scaffolding","N","1.maMca"
;The labourer was working on a scaffolding.
;
(defrule scaffold1
(declare (salience 4900))
(id-root ?id scaffold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAzsI_kA_waKwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scaffold.clp 	scaffold1   "  ?id "  PAzsI_kA_waKwA )" crlf))
)

;"scaffold","N","1.PAzsI kA waKwA"
;The culprit was sent to die on the scaffold.
;--"2.pAdZa"
;A scaffold is built in order to paint the skyscraper.
;
;