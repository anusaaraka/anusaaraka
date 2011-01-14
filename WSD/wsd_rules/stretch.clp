
(defrule stretch0
(declare (salience 5000))
(id-root ?id stretch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stretch.clp	stretch0  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule stretch1
(declare (salience 4900))
(id-root ?id stretch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stretch.clp	stretch1  "  ?id "  " ?id1 "  PEla  )" crlf))
)

(defrule stretch2
(declare (salience 4800))
(id-root ?id stretch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stretch.clp	stretch2  "  ?id "  " ?id1 "  PElA  )" crlf))
)

(defrule stretch3
(declare (salience 4700))
(id-root ?id stretch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stretch.clp	stretch3  "  ?id "  " ?id1 "  PEla  )" crlf))
)

(defrule stretch4
(declare (salience 4600))
(id-root ?id stretch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stretch.clp 	stretch4   "  ?id "  viswAra )" crlf))
)

(defrule stretch5
(declare (salience 4500))
(id-root ?id stretch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMcakara_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stretch.clp 	stretch5   "  ?id "  KIMcakara_baDZA )" crlf))
)

;"stretch","V","1.KIMcakara baDZAnA/wAnA jAnA"
;Stretch the rubber band to make it loose.
;--"2.jZora se KIMcanA"
;Sita stretched the rope tightly.
;--"3.aMgadZAI lenA"
;After waking we usually stretch our body.
;--"4.kisI vaswu kA Ayu baDZAnA"
;We can stretch the life of fruits by keeping them in the refrigerator.
;--"5.PElAnA"
;Influence of Pandit Nehru stretched all across the country.
;--"6.pUrNarUpa_se_lagAnA"
;He stretched all his energy to come in the rain.
;--"7.jZarUrawa se jyAxA KIMcanA"
;He stretch the limits of truth to make himself popular.
;
;
