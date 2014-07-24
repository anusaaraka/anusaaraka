;rule removed as charming is adjective
;(defrule charm0
;(declare (salience 5000))
;(id-root ?id charm)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id charming)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id mohaka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  charm.clp  	charm0   "  ?id "  mohaka )" crlf))
;)

;rule removed as charming is adjective
; Meaning of charming is manohara, there is no necessity to chk the category.
; This is also preferable (not to chk the categories, in view of POS mistakes)
;(defrule charm1
;(declare (salience 4900))
;(id-root ?id charm)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id charming )
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id mohaka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  charm.clp  	charm1   "  ?id "  mohaka )" crlf))
;)

;"charming","Adj","1.mohaka"
;Her daughter is endowed with charming manners.
;
;
(defrule charm2
;(declare (salience 4800));salience changed
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRaNa));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charm.clp 	charm2   "  ?id "  AkarRaNa )" crlf))
)

;"charm","N","1.manoharawA"
;She is a lady of great charm.
;
(defrule charm3
;(declare (salience 4700));salience changed
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mohiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charm.clp 	charm3   "  ?id "  mohiwa_kara )" crlf))
)

;@@@ Added by Preeti(7-5-14)
;He was charmed by her beauty and wit. 
;vaha usakI sunxarawA Ora buxXi se mohiwa ho gayA WA.
(defrule charm4
(declare (salience 1000))
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mohiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  charm.clp 	charm4   "  ?id "  mohiwa_ho )" crlf))
)

;@@@ Added by Preeti(7-5-14)
;She managed to charm his address out of the porter. [Oxford Advanced Learner's Dictionary]
;vaha xarabAna ko bAhara mohiwa_kara  usakA pawA pAne meM saPala huI.
(defrule charm5
(declare (salience 1050))
(id-root ?id charm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word  ?id1 out)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 mohiwa_kara_pAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  charm.clp 	charm5   "  ?id "  " ?id1 "mohiwa_kara_pAnA )" crlf))
)


;"charm","VT","1.mohiwa_karanA"
;She charmed him into giving her all his money.
;
