
(defrule assent0
(declare (salience 5000))
(id-root ?id assent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMjUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assent.clp 	assent0   "  ?id "  maMjUrI )" crlf))
)

;"assent","N","1.maMjUrI"
;I cannot give an assent to your request .
;They sought assent from the Principal for holding a concert in the college.
;--"2.sahamawi"
;They took the decision with common assent.
;
(defrule assent1
(declare (salience 4900))
(id-root ?id assent)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkqwi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assent.clp 	assent1   "  ?id "  svIkqwi_xe )" crlf))
)

(defrule assent2
(declare (salience 4800))
(id-root ?id assent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkqwi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assent.clp 	assent2   "  ?id "  svIkqwi_kara )" crlf))
)

;"assent","V","1.svIkqwi_xenA[karanA]"
;The manager refused to assent to his requests.
;The proposal on reservation for women was assented by the committee.
;He assented for taking up the job.
;
