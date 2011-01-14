
(defrule guide0
(declare (salience 5000))
(id-root ?id guide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paWapraxarSaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  guide.clp 	guide0   "  ?id "  paWapraxarSaka )" crlf))
)

;"guide","N","1.paWapraxarSaka"
;The teacher is your best guide.
;

;Modified by sheetal(19-10-09).
(defrule guide1
(declare (salience 4900))
(id-root ?id guide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArgaxarSana_kara))
(assert (kriyA_id-object_viBakwi ?id kA));Added by sheetal for sent." .
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  guide.clp     guide1   "  ?id "  mArgaxarSana_kara )" crlf))
)
;The role of a teacher is to guide a student towards knowledge . 

;default_sense && category=verb	aguvAI_kara	0
;"guide","VT","1.aguvAI_karanA"
;My brother guided me in my work.
;
