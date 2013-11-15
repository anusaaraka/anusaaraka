;As of now no example for this rule.
(defrule party0
(declare (salience 5000))
(id-root ?id party)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 strange )
(viSeRya-at_saMbanXI ?id1 ?id) ;Replaced viSeRya-at_viSeRaNa as viSeRya-at_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Boja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  party.clp 	party0   "  ?id "  Boja )" crlf))
)

;Modified by sheetal(21-01-10).
;John last week threw a great party .
(defrule party1
(declare (salience 4900))
(id-root ?id party)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 attend);(commented by sheetal)
(kriyA-object ?id1 ?id) ; Always this condition is not possible Counter ex: My party will be grander than your party. Suggested by Aditi ji 12-11-13
;attend|give|throw
;one rule should be object based and other on prep_saMbanXI
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Boja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  party.clp     party1   "  ?id "  Boja )" crlf))
)

;default pArtI
(defrule party2
(declare (salience 4800))
(id-root ?id party)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pArtI)) ; pArtI/xala 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  party.clp    party2   "  ?id "  pArtI )" crlf))
)
;In this rule Hindi meaning "xala" is replaced with "pArtI" by Sukhada because the meaning "pArtI" is more familier than the meaning "xala". Date: 13-06-09

;default_sense && category=noun	xala/janasamUha	0
;"party","N","1.xala/janasamUha"
;Party of that area was given maximum votes.
;
;
;--------------------Additional Examples by Aditi ji 12-11-13-------------
;To participate in a party.  

;-- pArtI_meM_jA
;Were you partying last night?
;kyA Apa kala rAwa pArtI meM gaye We?

;-- xala   [related to politics]
;campaign for|campaign against|launch|start|form|defect form|join
;The dissenters launched a new party.

;-- pakRa  [related to court/legal agreement/argument]|contract|judge|
;The contract can be terminated by either party with three months' notice.

;He was at the party.
;I saw him at the party.

;--xala
;He is in that party.
