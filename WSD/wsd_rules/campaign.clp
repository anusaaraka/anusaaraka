
(defrule campaign0
(declare (salience 5000))
(id-root ?id campaign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiyAna_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  campaign.clp 	campaign0   "  ?id "  aBiyAna_calA )" crlf))
)

(defrule campaign1
(declare (salience 4900))
(id-root ?id campaign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  campaign.clp 	campaign1   "  ?id "  aBiyAna )" crlf))
)

;"campaign","N","1.aBiyAna"
;Students launched a campaign against smoking on the campus.
;
;
