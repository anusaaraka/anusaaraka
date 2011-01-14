
(defrule grind0
(declare (salience 5000))
(id-root ?id grind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ground )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jZamIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  grind.clp  	grind0   "  ?id "  jZamIna )" crlf))
)

(defrule grind1
(declare (salience 4900))
(id-root ?id grind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ground )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jamIna_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  grind.clp  	grind1   "  ?id "  jamIna_para_raKa )" crlf))
)

;given_word=ground && word_category=verb	$XarawI_para_raKa)

;"ground","V","1.XarawI_para_raKanA"
;His bat was grounded
;He ground the stick to avoid falling
;
;
(defrule grind2
(declare (salience 4800))
(id-root ?id grind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grind.clp	grind2  "  ?id "  " ?id1 "  xaba  )" crlf))
)

;She was ground down by poverty.
;vaha garIbI ke wale xabI huI WI
(defrule grind3
(declare (salience 4700))
(id-root ?id grind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAra-bAra_praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grind.clp	grind3  "  ?id "  " ?id1 "  bAra-bAra_praswuwa_kara  )" crlf))
)

;The students ground out the same drama that they've been playing for last two years.
;vixyArWI eka hI nAtaka ko bAra-bAra praswuwa kara rahe hEM jise vaha piCale xo sAloM se Kela rahe hEM
(defrule grind4
(declare (salience 4600))
(id-root ?id grind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grind.clp	grind4  "  ?id "  " ?id1 "  pIsa  )" crlf))
)

(defrule grind5
(declare (salience 4500))
(id-root ?id grind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grind.clp 	grind5   "  ?id "  pIsa )" crlf))
)

;"grind","V","1.pIsanA"
;We grind chilly in the mixer grinder.
;
;
