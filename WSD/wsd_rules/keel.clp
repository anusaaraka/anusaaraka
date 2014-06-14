
(defrule keel0
(declare (salience 5000))
(id-root ?id keel)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keel.clp	keel0  "  ?id "  " ?id1 "  gira_jA  )" crlf))
)

;She was looking perfectly well but she keeled over as she got up to leave.
;vaha bilakula TIka laga rahI WI lekina jEse hI vaha jAne ke lie uTI ,acAnaka gira gaI
(defrule keel1
(declare (salience 4900))
(id-root ?id keel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keel.clp 	keel1   "  ?id "  ulata_jA )" crlf))
)

;default_sense && category=verb	gira	0
;"keel","V","1.giranA"
;He keeled over on the ground since he was standing in the sun
;for more than an hour.
;--"2.ulatanA"
;The ship turned over its keel.
;
;
;Added by Prachi Rathore[29-11-13]
(defrule keel2
(declare (salience 4900))
(id-root ?id keel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id penxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keel.clp 	keel2   "  ?id "  penxA)" crlf))
)
