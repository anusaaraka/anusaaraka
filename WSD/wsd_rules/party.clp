
(defrule party0
(declare (salience 5000))
(id-root ?id party)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 strange )
(viSeRya-at_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Boja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  party.clp 	party0   "  ?id "  Boja )" crlf))
)

;Modified by sheetal(21-01-10).
(defrule party1
(declare (salience 4900))
(id-root ?id party)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 attend);(commented by sheetal)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Boja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  party.clp     party1   "  ?id "  Boja )" crlf))
)
;John last week threw a great party .

(defrule party2
(declare (salience 4800))
(id-root ?id party)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pArtI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  party.clp    party2   "  ?id "  pArtI )" crlf))
)
;In this rule Hindi meaning "xala" is replaced with "pArtI" by Sukhada because the meaning "pArtI" is more familier than the meaning "xala". Date: 13-06-09

;default_sense && category=noun	xala/janasamUha	0
;"party","N","1.xala/janasamUha"
;Party of that area was given maximum votes.
;
;
