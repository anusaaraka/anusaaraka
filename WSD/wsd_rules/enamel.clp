
(defrule enamel0
(declare (salience 4000))
(id-root ?id enamel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mInAkArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enamel.clp 	enamel0   "  ?id "  mInAkArI )" crlf))
)

(defrule enamel1
(declare (salience 4900))
(id-root ?id enamel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mInAkArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enamel.clp 	enamel1   "  ?id "  mInAkArI_kara )" crlf))
)

;"enamel","VT","1.mInAkArI_karanA"
;In olden times people mostly engage themselves to enamel the bangle.
;
;


;@@@ Added by Pramila(BU) on 28-01-2014
;The enamel of her teeth is clean.        ;shiksharthi
;उसके दाँतों की दंतवल्क साफ है.
(defrule enamel2
(declare (salience 5000))
(id-root ?id enamel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 tooth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaMwavalka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enamel.clp 	enamel2   "  ?id "  xaMwavalka )" crlf))
)
