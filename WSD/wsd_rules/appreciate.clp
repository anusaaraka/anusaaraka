
;Added by Meena(17.1.11)
;All relevant Python features are carefully explained and exemplified, and you will quickly come to appreciate Python's suitability for this application area.
(defrule come_to_appreciate
(declare (salience 5000))
(id-root ?id appreciate)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 2) come)
(id-root =(- ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(- ?id 2)  praSaMsA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " appreciate.clp  come_to_appreciate  "  ?id "  " (- ?id 1) "   " (- ?id 2) "   praSaMsA_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 17-dec-2013
;His talents are not fully appreciated in that company.[oald]
;उस कम्पनी में उसकी प्रतिभा की पूरी कदर नहीं है
(defrule appreciate1
(declare (salience 3000))
(id-root ?id appreciate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-root ?sub talent)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  appreciate.clp       appreciate1   "  ?id "  kaxara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S) 17-dec-2013
;I'd appreciate some help.[oald]
;मैं थोड़ी मदद का आभारी रहूँगा
(defrule appreciate2
(declare (salience 3000))
(id-root ?id appreciate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-root ?obj help)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_ABArI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  appreciate.clp       appreciate2   "  ?id "  kA_ABArI_ho )" crlf))
)

;********************DEFAULT RULE******************************

;@@@ Added by Garima Singh(M.Tech-C.S) 17-dec-2013
(defrule appreciate0
(declare (salience 0))
(id-root ?id appreciate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarahanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  appreciate.clp       appreciate0   "  ?id "  sarahanA_kara )" crlf))
)

