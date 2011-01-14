
(defrule hinge0
(declare (salience 5000))
(id-root ?id hinge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ASriwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hinge.clp	hinge0  "  ?id "  " ?id1 "  ASriwa_ho  )" crlf))
)

;The whole story of this book hinges on a child.
;isa kiwAba kI pUrI kahAnI eka bacce para AXAriwa hE
(defrule hinge1
(declare (salience 4900))
(id-root ?id hinge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kabjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hinge.clp 	hinge1   "  ?id "  kabjA )" crlf))
)

;"hinge","N","1.kabjA"
;xaravAjA meM'hinge' lagAwe hEM jisase vaha alaga nahIM howA.
;
(defrule hinge2
(declare (salience 4800))
(id-root ?id hinge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kabje_para_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hinge.clp 	hinge2   "  ?id "  kabje_para_GUma )" crlf))
)

;"hinge","V","1.kabje_para_GUmanA/nirBara_rahanA"
;xaravAjA'hinge'(kabje kI sahAyawA)se GUmawA hE
;
