

;@@@ Added by Pramila(BU) on 05-02-2014
;The prisoners had an escort of soldiers to guard.   ;shiksharthi
;कैदियों की निगरानी के लिए सैनिकों का एक रक्षक दल था.
(defrule escort2
(declare (salience 5000))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root-category-suffix-number ?id1 ? noun s p)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRaka_xala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort2   "  ?id "  rakRaka_xala )" crlf))
)


;@@@ Added by Pramila(BU) on 05-02-2014
;He was brought to the court under escort.    ;shiksharthi
;उसे निगरानी में न्यायालय लाया गया.
(defrule escort3
(declare (salience 5000))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigarAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort3   "  ?id "  nigarAnI )" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;Let me escort you home.           ;oald
;मुझे तुम्हें संरक्षण में घर ले जाने दो.
(defrule escort4
(declare (salience 5000))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMrakRaNa_meM_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort4   "  ?id "  saMrakRaNa_meM_le_jA )" crlf))
)


;@@@ Added by Pramila(BU) on 05-02-2014
;There are soldiers to escort.           ;shiksharthi
;रक्षा करने के लिए सैनिक है.
(defrule escort5
(declare (salience 5000))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(saMjFA-to_kqxanwa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort5   "  ?id "  rakRA_kara )" crlf))
)

;-----------------------Default rules ------------------------
(defrule escort0
(declare (salience 100))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort0   "  ?id "  rakRaka )" crlf))
)

;"escort","N","1.rakRaka/paharexAra/mArga_kA_raKavAlA"
(defrule escort1
(declare (salience 100))
(id-root ?id escort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahare_ke_sAWa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  escort.clp 	escort1   "  ?id "  pahare_ke_sAWa_jA )" crlf))
)

;"escort","VT","1.pahare_ke_sAWa_jAnA/paharA_karanA/rakRA_karanA"
