;"chisel","N","1.CenI"
;Chisel is used in shaping wood,stone etc.
;
(defrule chisel0
(declare (salience 5000))
(id-root ?id chisel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CenI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chisel.clp 	chisel0   "  ?id "  CenI )" crlf))
)

;$$$  Modified by Preeti(19-5-14)
;Letters were chiseled into a wall. [merriam-webster.com]
;akRara xIvAra para warASe gaye We.
(defrule chisel1
;(declare (salience 4900));salience changed
(id-root ?id chisel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warAsa));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chisel.clp 	chisel1   "  ?id "  warAsa )" crlf))
)


;@@@ Added by Preeti(19-5-14)
;He chiseled off a corner of the block. [merriam-webster.com]
;usane KaNda ke kone ko CenI_se_kAtanA.
(defrule chisel2
(declare (salience 4900))
(id-root ?id chisel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CenI_se_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  chisel.clp 	chisel2   "  ?id "  "  ?id1 " CenI_se_kAta )" crlf))
)

;parser problem
;@@@ Added by Preeti(19-5-14)
;They chiseled me out of my money. [wordnetweb.princeton.edu]
;unhoMne mere pEse lUta liye.
(defrule chisel3
(declare (salience 4900))
(id-root ?id chisel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lUta_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  chisel.clp 	chisel3   "  ?id "  "  ?id1 " lUta_le)" crlf))
)


;"chisel","VT","1.CenI_se_kAtanA"
;The artist chiselled the marble.
;
