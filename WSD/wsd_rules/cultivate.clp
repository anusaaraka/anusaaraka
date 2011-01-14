
(defrule cultivate0
(declare (salience 5000))
(id-root ?id cultivate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cultivated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id susaMkqwa));Meaning sAMskqwika has been modified during workshop.
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cultivate.clp  	cultivate0   "  ?id "  susaMkqwa )" crlf))
)

;"cultivated","Adj","1.sAMskqwika"
;She is a cultivated young women
;
(defrule cultivate1
(declare (salience 4900))
(id-root ?id cultivate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juwAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cultivate.clp 	cultivate1   "  ?id "  juwAI_kara )" crlf))
)

;default_sense && category=verb	KewI_kara	0
;"cultivate","VT","1.KewI_karanA"
;Farmers cultivate the lands
;--"2.sambanXa_baDAnA"
;We must cultivate good relations with others
;
;

(defrule cultivate2
(declare (salience 4950))
(id-root ?id cultivate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(kriyA-in_saMbanXI ?id ?id2)
(id-word ?id3 in)
(id-root ?id1 habit|value|virtue|quality)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siKA))
(assert (id-wsd_word_mng ?id3 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cultivate.clp 	cultivate2   "  ?id "  siKA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cultivate.clp 	cultivate2   "  ?id3 "  ko )" crlf))

