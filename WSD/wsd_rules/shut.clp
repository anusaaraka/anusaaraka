;@@@ Added by jagriti(21.1.2014)
;They shut him from their circle.
;उन्होंने अपनी मंडली से उसको निकाल दिया .  
(defrule shut0
(declare (salience 5000))
(id-root ?id shut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shut.clp 	shut0   "  ?id "  nikAla_xe )" crlf))
)
;@@@ Added by jagriti(21.1.2014)
;I can shut down easily in wrestling.
;मैं उसे कुश्ती करने में आसानी से हरा सकता हूँ .
(defrule shut1
(declare (salience 4900))
(id-root ?id shut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-upasarga ?id ?id1)
(id-root ?id1 down)
(kriyA-in_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 harA_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shut.clp	shut1  "  ?id "  " ?id1 "   harA_xe )" crlf))
)
;@@@ Added by jagriti(21.1.2014)
;The factory has been shut down through lack of work.
;फैक्टरी को कार्य की कमी के कारण बन्द कर दिया गया है .
(defrule shut2
(declare (salience 4800))
(id-root ?id shut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-upasarga ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shut.clp	shut2  "  ?id "  " ?id1 "   banxa_kara )" crlf))
)

(defrule shut3
(declare (salience 4700))
(id-root ?id shut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shut.clp 	shut3   "  ?id "  banxa_kara )" crlf))
)

;....Default rule....
(defrule shut4
(declare (salience 100))
(id-root ?id shut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shut.clp 	shut4   "  ?id "  banxa_ho )" crlf))
)

;"shut","V","1.banxa karanA"
;When you go out shut the door.
;
;
