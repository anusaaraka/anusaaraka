
(defrule pot0
(declare (salience 5000))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot0   "  ?id "  barawana )" crlf))
)

;"pot","N","1.barawana"
;Women make beautiful pots from black clay.
;--"2.gamalA"
;Marigold plants are flourishing well in those tiny pots.
;--"3.cAyaxAnI"
;The tea is ready in the tea pot.
;
(defrule pot1
(declare (salience 4900))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamale_meM_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot1   "  ?id "  gamale_meM_lagA )" crlf))
)

;"pot","V","1.gamale_meM_lagAnA"
;He is busy in potting plants.
;--"2.pilAnA{biliyardsa}"
;He very neatly potted the black ball.
;--"3.mAranA"
;They potted dozons of black birds.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
; He strolled through the fields, potting at the occasional rabbit. [cambridge]
;वह मैदानों में घूमा, खरगोश पर निशाना लगाता हुआ .
(defrule pot2
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSanA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot2   "  ?id "  niSanA_lagA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
; I'm afraid I've let the garden go to pot this summer. [cambridge]
;मुझे डर है कि मैंने बगीचे को इस गर्मी बुरी हालत में होने दिया है .
(defrule pot3
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_hAlawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot3   "  ?id "  burI_hAlawa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
;Potted meat. [cambridge]
;पका हुआ माँस .
(defrule pot4
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 meat|shrimp)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot4   "  ?id "  pakA)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
;A potted version. [M-W]
;एक संक्षिप्त संस्करण .
(defrule pot5
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 version|summary|history)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot5   "  ?id "  saMkRipwa)" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
;She potted a bird. [M-W]
;उसने एक चिड़िया को निशाना लगाया .
(defrule pot6
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 bird|animal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAnA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot6   "  ?id "  niSAnA_lagA)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
(defrule pot7
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot7   "  ?id "  barawana)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pot4
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 meat|shrimp)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pot.clp   sub_samA_pot4   "   ?id " pakA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pot4
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 meat|shrimp)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pot.clp   obj_samA_pot4   "   ?id " pakA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pot5
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 version|summary|history)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pot.clp   sub_samA_pot5   "   ?id " saMkRipwa)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pot5
(declare (salience 5500))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 version|summary|history)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pot.clp   obj_samA_pot5   "   ?id " saMkRipwa)" crlf))
)
