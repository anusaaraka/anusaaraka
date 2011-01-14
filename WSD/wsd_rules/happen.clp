
(defrule happen0
(declare (salience 5000))
(id-root ?id happen)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " happen.clp	happen0  "  ?id "  " ?id1 "  acAnaka_mila_jA  )" crlf))
)

;She happened upon the perfect solution just as she was going to give up the question.
;use acAnaka hI sahI hala mila gayA jEse hI vaha usa praSna ko CodZane vAlI WI
;default_sense && category=verb	Gatiwa_ho	0
(defrule happen1
(declare (salience 4900))
(id-root ?id happen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  happen.clp 	happen1   "  ?id "  ho )" crlf))
)

;"happen","V","1.Gatiwa honA"
;gAisala meM"happen"rela xurGatanA aba waka kI BayaMkarawama hE.
;
;
